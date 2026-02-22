/*
 * Copyright (c) 2025 Broadcom.
 * The term "Broadcom" refers to Broadcom Inc. and/or its subsidiaries.
 *
 * This program and the accompanying materials are made
 * available under the terms of the Eclipse Public License 2.0
 * which is available at https://www.eclipse.org/legal/epl-2.0/
 *
 * SPDX-License-Identifier: EPL-2.0
 *
 * Contributors:
 *    Broadcom, Inc. - initial API and implementation
 *
 */

package org.eclipse.lsp.cobol.implicitDialects.mq;

import com.google.common.collect.ImmutableList;
import java.util.List;
import java.util.stream.Collectors;
import org.eclipse.lsp.cobol.common.AnalysisConfig;
import org.eclipse.lsp.cobol.common.copybook.CopybookModel;
import org.eclipse.lsp.cobol.common.copybook.CopybookName;
import org.eclipse.lsp.cobol.common.copybook.CopybookService;
import org.eclipse.lsp.cobol.common.dialects.CobolDialect;
import org.eclipse.lsp.cobol.common.file.WorkspaceFileService;
import org.eclipse.lsp.cobol.common.message.MessageService;
import org.eclipse.lsp.cobol.common.utils.ImplicitCodeUtils;

/** IBM MQ implicit dialect; provides predefined MQ copybooks (CMQTML, CMQV, CMQODV, CMQPMOV, CMQMDV, CMQGMOV). */
public class MQDialect implements CobolDialect {

  public static final String DIALECT_NAME = "mq";

  private static final List<String> MQ_IMPLICIT_COPYBOOK_NAMES =
      ImmutableList.of("CMQTML", "CMQV", "CMQODV", "CMQPMOV", "CMQMDV", "CMQGMOV");

  public MQDialect(CopybookService copybookService, MessageService messageService) {
    // Constructor signature matches other implicit dialects; no instance state needed for copybooks
  }

  @Override
  public String getName() {
    return DIALECT_NAME;
  }

  @Override
  public List<CopybookModel> getPredefinedCopybook(AnalysisConfig ctx) {
    WorkspaceFileService workspaceFileService = new WorkspaceFileService();
    return MQ_IMPLICIT_COPYBOOK_NAMES.stream()
        .map(
            name -> {
              String content = workspaceFileService.readImplicitCode(name);
              if (content == null) {
                return null;
              }
              CopybookName copybookName = new CopybookName(name);
              String fullUrl = ImplicitCodeUtils.createFullUrl(name);
              return new CopybookModel(
                  copybookName.toCopybookId(fullUrl), copybookName, fullUrl, content);
            })
        .filter(model -> model != null)
        .collect(Collectors.toList());
  }
}
