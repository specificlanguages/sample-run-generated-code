<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:c56c04c4-dcc6-4a92-99ef-9b376c19a423(com.spclngs.calc.util)">
  <persistence version="9" />
  <languages>
    <use id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="j8aq" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.module(MPS.Core/)" />
    <import index="t6h5" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang.reflect(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="yj88" ref="r:bc7dfb03-9c7b-460a-89bd-5a9806bacc49(com.spclngs.calc.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="8118189177080264853" name="jetbrains.mps.baseLanguage.structure.AlternativeType" flags="ig" index="nSUau">
        <child id="8118189177080264854" name="alternative" index="nSUat" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="4952749571008284462" name="jetbrains.mps.baseLanguage.structure.CatchVariable" flags="ng" index="XOnhg" />
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1171903607971" name="jetbrains.mps.baseLanguage.structure.WildCardType" flags="in" index="3qTvmN" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="3093926081414150598" name="jetbrains.mps.baseLanguage.structure.MultipleCatchClause" flags="ng" index="3uVAMA">
        <child id="8276990574895933173" name="catchBody" index="1zc67A" />
        <child id="8276990574895933172" name="throwable" index="1zc67B" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="5351203823916750322" name="jetbrains.mps.baseLanguage.structure.TryUniversalStatement" flags="nn" index="3J1_TO">
        <child id="8276990574886367510" name="catchClause" index="1zxBo5" />
        <child id="8276990574886367508" name="body" index="1zxBo7" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="63650c59-16c8-498a-99c8-005c7ee9515d" name="jetbrains.mps.lang.access">
      <concept id="8974276187400348173" name="jetbrains.mps.lang.access.structure.CommandClosureLiteral" flags="nn" index="1QHqEC" />
      <concept id="8974276187400348170" name="jetbrains.mps.lang.access.structure.BaseExecuteCommandStatement" flags="nn" index="1QHqEJ">
        <child id="1423104411234567454" name="repo" index="ukAjM" />
        <child id="8974276187400348171" name="commandClosureLiteral" index="1QHqEI" />
      </concept>
      <concept id="8974276187400348181" name="jetbrains.mps.lang.access.structure.ExecuteLightweightCommandStatement" flags="nn" index="1QHqEK" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="C8nsB2thtu">
    <property role="TrG5h" value="RunAdder" />
    <node concept="2YIFZL" id="C8nsB2thuw" role="jymVt">
      <property role="TrG5h" value="runAdder" />
      <node concept="3clFbS" id="C8nsB2thuz" role="3clF47">
        <node concept="3cpWs8" id="C8nsB2shDq" role="3cqZAp">
          <node concept="3cpWsn" id="C8nsB2shDr" role="3cpWs9">
            <property role="TrG5h" value="module" />
            <node concept="3uibUv" id="C8nsB2shD0" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
            </node>
            <node concept="2OqwBi" id="C8nsB2shDs" role="33vP2m">
              <node concept="2JrnkZ" id="C8nsB2shDt" role="2Oq$k0">
                <node concept="2OqwBi" id="C8nsB2shDu" role="2JrQYb">
                  <node concept="I4A8Y" id="C8nsB2shDw" role="2OqNvi" />
                  <node concept="37vLTw" id="C8nsB2tidk" role="2Oq$k0">
                    <ref role="3cqZAo" node="C8nsB2thuV" resolve="adder" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="C8nsB2shDx" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="C8nsB2sj99" role="3cqZAp">
          <node concept="3clFbS" id="C8nsB2sj9b" role="3clFbx">
            <node concept="3cpWs6" id="C8nsB2tsDU" role="3cqZAp">
              <node concept="Xl_RD" id="C8nsB2stuj" role="3cqZAk">
                <property role="Xl_RC" value="Module not reloadable, cannot obtain class loader" />
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="C8nsB2soDQ" role="3clFbw">
            <node concept="2ZW3vV" id="C8nsB2soDS" role="3fr31v">
              <node concept="3uibUv" id="C8nsB2soDT" role="2ZW6by">
                <ref role="3uigEE" to="j8aq:~ReloadableModule" resolve="ReloadableModule" />
              </node>
              <node concept="37vLTw" id="C8nsB2soDU" role="2ZW6bz">
                <ref role="3cqZAo" node="C8nsB2shDr" resolve="module" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="C8nsB2szez" role="9aQIa">
            <node concept="3clFbS" id="C8nsB2sze$" role="9aQI4">
              <node concept="3J1_TO" id="C8nsB2sS3A" role="3cqZAp">
                <node concept="3uVAMA" id="C8nsB2sTaw" role="1zxBo5">
                  <node concept="XOnhg" id="C8nsB2sTax" role="1zc67B">
                    <property role="TrG5h" value="ex" />
                    <node concept="nSUau" id="C8nsB2sTay" role="1tU5fm">
                      <node concept="3uibUv" id="C8nsB2sUqr" role="nSUat">
                        <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="C8nsB2sTaz" role="1zc67A">
                    <node concept="3cpWs6" id="C8nsB2tvsm" role="3cqZAp">
                      <node concept="3cpWs3" id="C8nsB2tw4D" role="3cqZAk">
                        <node concept="3cpWs3" id="C8nsB2tVpd" role="3uHU7B">
                          <node concept="Xl_RD" id="C8nsB2tVpr" role="3uHU7w">
                            <property role="Xl_RC" value=": " />
                          </node>
                          <node concept="3cpWs3" id="C8nsB2tTwZ" role="3uHU7B">
                            <node concept="Xl_RD" id="C8nsB2twfh" role="3uHU7B">
                              <property role="Xl_RC" value="Caught " />
                            </node>
                            <node concept="2OqwBi" id="C8nsB2tU9y" role="3uHU7w">
                              <node concept="37vLTw" id="C8nsB2tTNc" role="2Oq$k0">
                                <ref role="3cqZAo" node="C8nsB2sTax" resolve="ex" />
                              </node>
                              <node concept="liA8E" id="C8nsB2tUMn" role="2OqNvi">
                                <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="C8nsB2tvAL" role="3uHU7w">
                          <node concept="37vLTw" id="C8nsB2tvAM" role="2Oq$k0">
                            <ref role="3cqZAo" node="C8nsB2sTax" resolve="ex" />
                          </node>
                          <node concept="liA8E" id="C8nsB2tvAN" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~Throwable.getMessage()" resolve="getMessage" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="C8nsB2sS3C" role="1zxBo7">
                  <node concept="3cpWs8" id="C8nsB2tXFX" role="3cqZAp">
                    <node concept="3cpWsn" id="C8nsB2tXFY" role="3cpWs9">
                      <property role="TrG5h" value="fqName" />
                      <node concept="17QB3L" id="C8nsB2tWwk" role="1tU5fm" />
                    </node>
                  </node>
                  <node concept="1QHqEK" id="C8nsB2u02j" role="3cqZAp">
                    <node concept="1QHqEC" id="C8nsB2u02l" role="1QHqEI">
                      <node concept="3clFbS" id="C8nsB2u02n" role="1bW5cS">
                        <node concept="3clFbF" id="C8nsB2tYTi" role="3cqZAp">
                          <node concept="37vLTI" id="C8nsB2tYTk" role="3clFbG">
                            <node concept="2OqwBi" id="C8nsB2tXFZ" role="37vLTx">
                              <node concept="2qgKlT" id="C8nsB2tXG0" role="2OqNvi">
                                <ref role="37wK5l" to="tpcu:hEwIO9y" resolve="getFqName" />
                              </node>
                              <node concept="37vLTw" id="C8nsB2tXG1" role="2Oq$k0">
                                <ref role="3cqZAo" node="C8nsB2thuV" resolve="adder" />
                              </node>
                            </node>
                            <node concept="37vLTw" id="C8nsB2tYTo" role="37vLTJ">
                              <ref role="3cqZAo" node="C8nsB2tXFY" resolve="fqName" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="C8nsB2u4gJ" role="ukAjM">
                      <ref role="3cqZAo" node="C8nsB2u3Qn" resolve="repository" />
                    </node>
                  </node>
                  <node concept="3cpWs8" id="C8nsB2sCRQ" role="3cqZAp">
                    <node concept="3cpWsn" id="C8nsB2sCRR" role="3cpWs9">
                      <property role="TrG5h" value="theClass" />
                      <node concept="3uibUv" id="C8nsB2sCRO" role="1tU5fm">
                        <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
                        <node concept="3qTvmN" id="C8nsB2sDAs" role="11_B2D" />
                      </node>
                      <node concept="2OqwBi" id="C8nsB2sLBh" role="33vP2m">
                        <node concept="1eOMI4" id="C8nsB2sIaI" role="2Oq$k0">
                          <node concept="10QFUN" id="C8nsB2sIaF" role="1eOMHV">
                            <node concept="3uibUv" id="C8nsB2sJkT" role="10QFUM">
                              <ref role="3uigEE" to="j8aq:~ReloadableModule" resolve="ReloadableModule" />
                            </node>
                            <node concept="37vLTw" id="C8nsB2sLj1" role="10QFUP">
                              <ref role="3cqZAo" node="C8nsB2shDr" resolve="module" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="C8nsB2sNbz" role="2OqNvi">
                          <ref role="37wK5l" to="j8aq:~ReloadableModule.getClass(java.lang.String)" resolve="getClass" />
                          <node concept="37vLTw" id="C8nsB2tXG2" role="37wK5m">
                            <ref role="3cqZAo" node="C8nsB2tXFY" resolve="fqName" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="C8nsB2tbsg" role="3cqZAp">
                    <node concept="3cpWsn" id="C8nsB2tbsh" role="3cpWs9">
                      <property role="TrG5h" value="instance" />
                      <node concept="3uibUv" id="C8nsB2tbsf" role="1tU5fm">
                        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                      </node>
                      <node concept="2OqwBi" id="C8nsB2tbsi" role="33vP2m">
                        <node concept="2OqwBi" id="C8nsB2tbsj" role="2Oq$k0">
                          <node concept="37vLTw" id="C8nsB2tbsk" role="2Oq$k0">
                            <ref role="3cqZAo" node="C8nsB2sCRR" resolve="theClass" />
                          </node>
                          <node concept="liA8E" id="C8nsB2tbsl" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~Class.getConstructor(java.lang.Class...)" resolve="getConstructor" />
                          </node>
                        </node>
                        <node concept="liA8E" id="C8nsB2tbsm" role="2OqNvi">
                          <ref role="37wK5l" to="t6h5:~Constructor.newInstance(java.lang.Object...)" resolve="newInstance" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="C8nsB2tiJY" role="3cqZAp">
                    <node concept="3cpWsn" id="C8nsB2tiJZ" role="3cpWs9">
                      <property role="TrG5h" value="getResultMethod" />
                      <node concept="3uibUv" id="C8nsB2tiK0" role="1tU5fm">
                        <ref role="3uigEE" to="t6h5:~Method" resolve="Method" />
                      </node>
                      <node concept="2OqwBi" id="C8nsB2tjzy" role="33vP2m">
                        <node concept="37vLTw" id="C8nsB2tj9z" role="2Oq$k0">
                          <ref role="3cqZAo" node="C8nsB2sCRR" resolve="theClass" />
                        </node>
                        <node concept="liA8E" id="C8nsB2tkip" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~Class.getMethod(java.lang.String,java.lang.Class...)" resolve="getMethod" />
                          <node concept="Xl_RD" id="C8nsB2tks5" role="37wK5m">
                            <property role="Xl_RC" value="getResult" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="C8nsB2tmvi" role="3cqZAp">
                    <node concept="3cpWsn" id="C8nsB2tmvj" role="3cpWs9">
                      <property role="TrG5h" value="resultObject" />
                      <node concept="3uibUv" id="C8nsB2tmvk" role="1tU5fm">
                        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                      </node>
                      <node concept="2OqwBi" id="C8nsB2tnma" role="33vP2m">
                        <node concept="37vLTw" id="C8nsB2tmSZ" role="2Oq$k0">
                          <ref role="3cqZAo" node="C8nsB2tiJZ" resolve="getResultMethod" />
                        </node>
                        <node concept="liA8E" id="C8nsB2tnZ4" role="2OqNvi">
                          <ref role="37wK5l" to="t6h5:~Method.invoke(java.lang.Object,java.lang.Object...)" resolve="invoke" />
                          <node concept="37vLTw" id="C8nsB2to9M" role="37wK5m">
                            <ref role="3cqZAo" node="C8nsB2tbsh" resolve="instance" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs6" id="C8nsB2ttFo" role="3cqZAp">
                    <node concept="2YIFZM" id="C8nsB2tpQB" role="3cqZAk">
                      <ref role="37wK5l" to="wyt6:~String.valueOf(java.lang.Object)" resolve="valueOf" />
                      <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                      <node concept="37vLTw" id="C8nsB2tqaf" role="37wK5m">
                        <ref role="3cqZAo" node="C8nsB2tmvj" resolve="resultObject" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="C8nsB2thu6" role="1B3o_S" />
      <node concept="17QB3L" id="C8nsB2thul" role="3clF45" />
      <node concept="37vLTG" id="C8nsB2thuV" role="3clF46">
        <property role="TrG5h" value="adder" />
        <node concept="3Tqbb2" id="C8nsB2thuU" role="1tU5fm">
          <ref role="ehGHo" to="yj88:C8nsB2qmnn" resolve="Adder" />
        </node>
      </node>
      <node concept="37vLTG" id="C8nsB2u3Qn" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="C8nsB2u49k" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="C8nsB2thtv" role="1B3o_S" />
  </node>
</model>

