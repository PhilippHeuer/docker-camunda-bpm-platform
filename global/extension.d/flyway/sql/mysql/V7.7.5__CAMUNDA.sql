--
-- Copyright © 2012 - 2018 camunda services GmbH and various authors (info@camunda.com)
--
-- Licensed under the Apache License, Version 2.0 (the "License");
-- you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
--
--     http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.
--

-- insert indices for history cleanup - https://app.camunda.com/jira/browse/CAM-8184 --
create index ACT_IDX_HI_JOB_LOG_EX_STACK on ACT_HI_JOB_LOG(JOB_EXCEPTION_STACK_ID_);
create index ACT_IDX_HI_VARINST_BYTEAR on ACT_HI_VARINST(BYTEARRAY_ID_);
create index ACT_IDX_HI_DETAIL_BYTEAR on ACT_HI_DETAIL(BYTEARRAY_ID_);
create index ACT_IDX_HI_EXTTASKLOG_ERRORDET on ACT_HI_EXT_TASK_LOG(ERROR_DETAILS_ID_);
create index ACT_IDX_HI_COMMENT_TASK on ACT_HI_COMMENT(TASK_ID_);
create index ACT_IDX_HI_COMMENT_PROCINST on ACT_HI_COMMENT(PROC_INST_ID_);
create index ACT_IDX_HI_ATTACHMENT_CONTENT on ACT_HI_ATTACHMENT(CONTENT_ID_);
create index ACT_IDX_HI_ATTACHMENT_PROCINST on ACT_HI_ATTACHMENT(PROC_INST_ID_);
create index ACT_IDX_HI_ATTACHMENT_TASK on ACT_HI_ATTACHMENT(TASK_ID_);
create index ACT_IDX_HI_TASKINST_PROCINST on ACT_HI_TASKINST(PROC_INST_ID_);
create index ACT_IDX_HI_TASKINSTID_PROCINST on ACT_HI_TASKINST(ID_,PROC_INST_ID_);
create index ACT_IDX_HI_IDENT_LINK_TASK on ACT_HI_IDENTITYLINK(TASK_ID_);
create index ACT_IDX_HI_INCIDENT_PROCINST on ACT_HI_INCIDENT(PROC_INST_ID_);

--
-- Copyright © 2012 - 2018 camunda services GmbH and various authors (info@camunda.com)
--
-- Licensed under the Apache License, Version 2.0 (the "License");
-- you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
--
--     http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.
--

-- increase the field length https://app.camunda.com/jira/browse/CAM-8177 --
ALTER TABLE ACT_RU_AUTHORIZATION 
  MODIFY RESOURCE_ID_ varchar(255);
