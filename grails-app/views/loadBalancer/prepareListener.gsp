<%--

    Copyright 2012 Netflix, Inc.

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.

--%>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <meta name="layout" content="main"/>
  <title>Add Listener</title>
</head>
<body>
<div class="body">
  <h1>Add Listener</h1>
  <g:if test="${flash.message}">
    <div class="message">${flash.message}</div>
  </g:if>
  <g:hasErrors bean="${cmd}">
    <div class="errors">
      <g:renderErrors bean="${cmd}" as="list"/>
    </div>
  </g:hasErrors>
  <g:form action="save" method="post" class="validate">
    <div class="dialog">
      <table>
        <tbody valign="top">
        <tr class="prop">
          <td class="name">Name:</td>
          <td class="value"><g:linkObject type="loadBalancer" name="${loadBalancer}"/></td>
        </tr>
        <tr class="prop">
          <td class="name">
            <label>Listener:</label>
          </td>
          <td class="numbers">
            <g:render template="listenerOptions" model="${[index: '', protocol: params.protocol, lbPort: params.lbPort, instancePort: params.instancePort]}" />
          </td>
        </tr>
        </tbody>
      </table>
    </div>
    <div class="buttons">
      <input type="hidden" name="name" value="${loadBalancer}"/>
      <g:buttonSubmit class="save" action="addListener">Add Listener</g:buttonSubmit>
    </div>
  </g:form>
</div>
</body>
</html>
