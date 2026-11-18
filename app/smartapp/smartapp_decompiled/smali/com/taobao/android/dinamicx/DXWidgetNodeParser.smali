.class public Lcom/taobao/android/dinamicx/DXWidgetNodeParser;
.super Ljava/lang/Object;
.source "DXWidgetNodeParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static isWidgetNodeGone(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)Z
    .locals 12

    const-string v0, "Pipeline_Stage_Load_Binary"

    const-string v1, "Pipeline"

    .line 138
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getVisibility()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    return v3

    .line 143
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDataParsersExprNode()Landroid/support/v4/util/LongSparseArray;

    move-result-object v2

    const/4 v5, 0x0

    if-nez v2, :cond_1

    return v5

    :cond_1
    const/16 v2, 0x800

    .line 147
    invoke-virtual {p0, v2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getStatInPrivateFlags(I)Z

    move-result v6

    if-nez v6, :cond_7

    .line 149
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDataParsersExprNode()Landroid/support/v4/util/LongSparseArray;

    move-result-object v6

    const-wide v7, 0x5086155c409bd152L    # 8.182680092428053E79

    .line 150
    invoke-virtual {v6, v7, v8}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 153
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDataParsersExprNode()Landroid/support/v4/util/LongSparseArray;

    move-result-object v6

    invoke-virtual {v6, v7, v8}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/taobao/android/dinamicx/expression/DXExprNode;

    const/4 v9, 0x0

    .line 155
    :try_start_0
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Lcom/taobao/android/dinamicx/expression/DXExprNode;->evaluate(Lcom/taobao/android/dinamicx/expression/event/DXEvent;Lcom/taobao/android/dinamicx/DXRuntimeContext;)Ljava/lang/Object;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    .line 157
    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->isDebug()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 158
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 160
    :cond_2
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object v6

    iget-object v6, v6, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    new-instance v10, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    const v11, 0x1155a

    invoke-direct {v10, v1, v0, v11}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 161
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    :goto_0
    :try_start_1
    instance-of v6, v9, Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 168
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 169
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getEnumMap()Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 170
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getEnumMap()Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    move-result-object v9

    invoke-virtual {v9, v7, v8}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 171
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getEnumMap()Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    move-result-object v9

    invoke-virtual {v9, v7, v8}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 173
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getEnumMap()Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    move-result-object v9

    invoke-virtual {v9, v7, v8}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 172
    invoke-virtual {p0, v7, v8, v6}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setIntAttribute(JI)V

    goto :goto_1

    .line 176
    :cond_3
    invoke-virtual {p0, v7, v8}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDefaultValueForIntAttr(J)I

    move-result v6

    .line 175
    invoke-virtual {p0, v7, v8, v6}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setIntAttribute(JI)V

    goto :goto_1

    .line 180
    :cond_4
    invoke-virtual {p0, v7, v8}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDefaultValueForIntAttr(J)I

    move-result v6

    .line 179
    invoke-virtual {p0, v7, v8, v6}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setIntAttribute(JI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v6

    .line 183
    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->isDebug()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 184
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 186
    :cond_5
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object v6

    iget-object v6, v6, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    new-instance v7, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    const v8, 0x1155b

    invoke-direct {v7, v1, v0, v8}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 187
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    :cond_6
    :goto_1
    invoke-virtual {p0, v2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setStatFlag(I)V

    .line 197
    :cond_7
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getVisibility()I

    move-result p0

    if-ne p0, v4, :cond_8

    goto :goto_2

    :cond_8
    const/4 v3, 0x0

    :goto_2
    return v3
.end method

.method private parseAttrsInWidgetNode(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)V
    .locals 14

    const-string v0, "Pipeline"

    .line 201
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDataParsersExprNode()Landroid/support/v4/util/LongSparseArray;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 205
    :cond_0
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 207
    :goto_0
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDataParsersExprNode()Landroid/support/v4/util/LongSparseArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_1d

    .line 208
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDataParsersExprNode()Landroid/support/v4/util/LongSparseArray;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/support/v4/util/LongSparseArray;->keyAt(I)J

    move-result-wide v8

    const-wide v4, 0x5086155c409bd152L    # 8.182680092428053E79

    cmp-long v6, v8, v4

    if-nez v6, :cond_1

    goto/16 :goto_7

    .line 215
    :cond_1
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDataParsersExprNode()Landroid/support/v4/util/LongSparseArray;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/taobao/android/dinamicx/expression/DXExprNode;

    const/4 v5, 0x0

    .line 219
    :try_start_0
    invoke-virtual {v4, v5, v1}, Lcom/taobao/android/dinamicx/expression/DXExprNode;->evaluate(Lcom/taobao/android/dinamicx/expression/event/DXEvent;Lcom/taobao/android/dinamicx/DXRuntimeContext;)Ljava/lang/Object;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v10, v5

    goto :goto_2

    :catch_0
    move-exception v6

    .line 221
    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->isDebug()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 222
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 224
    :cond_2
    invoke-virtual {v1}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object v6

    iget-object v6, v6, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    new-instance v7, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    const v10, 0x1155a

    const-string v11, "Pipeline_Stage_Load_Binary"

    invoke-direct {v7, v0, v11, v10}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 230
    :goto_2
    invoke-virtual {v4}, Lcom/taobao/android/dinamicx/expression/DXExprNode;->getDataType()S

    move-result v4

    const/16 v5, 0x60

    if-ne v4, v5, :cond_3

    .line 234
    invoke-virtual {v1}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object v5, p0

    move-object v7, p1

    invoke-direct/range {v5 .. v10}, Lcom/taobao/android/dinamicx/DXWidgetNodeParser;->parseNumType(Landroid/content/Context;Lcom/taobao/android/dinamicx/widget/DXWidgetNode;JLjava/lang/Object;)V

    goto/16 :goto_7

    :cond_3
    const/16 v5, 0x260

    if-ne v4, v5, :cond_5

    .line 237
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 238
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getEnumMap()Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getEnumMap()Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getEnumMap()Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 239
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getEnumMap()Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v8, v9, v4}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setIntAttribute(JI)V

    goto/16 :goto_7

    .line 241
    :cond_4
    invoke-virtual {v1}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object v5, p0

    move-object v7, p1

    invoke-direct/range {v5 .. v10}, Lcom/taobao/android/dinamicx/DXWidgetNodeParser;->parseNumType(Landroid/content/Context;Lcom/taobao/android/dinamicx/widget/DXWidgetNode;JLjava/lang/Object;)V

    goto/16 :goto_7

    :cond_5
    const/4 v5, 0x1

    if-eqz v10, :cond_6

    const/4 v6, 0x1

    goto :goto_3

    :cond_6
    const/4 v6, 0x0

    :goto_3
    const-string v7, "="

    const-string v11, "["

    const-string v12, "DXTemplateParser"

    const-string v13, "Pipeline_Stage_Parse_Widget"

    if-eq v4, v5, :cond_1b

    const/4 v5, 0x2

    if-eq v4, v5, :cond_19

    const/4 v5, 0x4

    if-eq v4, v5, :cond_17

    const/16 v5, 0x8

    if-eq v4, v5, :cond_15

    const/16 v5, 0x10

    if-eq v4, v5, :cond_13

    const/16 v5, 0x20

    if-eq v4, v5, :cond_12

    const/16 v5, 0x40

    if-eq v4, v5, :cond_12

    const/16 v5, 0x80

    if-eq v4, v5, :cond_f

    const/16 v5, 0x100

    if-eq v4, v5, :cond_c

    const/16 v5, 0x200

    if-eq v4, v5, :cond_9

    const/16 v5, 0x400

    if-eq v4, v5, :cond_7

    goto/16 :goto_7

    :cond_7
    if-eqz v10, :cond_8

    .line 370
    invoke-virtual {p1, v8, v9, v10}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setObjAttribute(JLjava/lang/Object;)V

    goto/16 :goto_7

    .line 372
    :cond_8
    invoke-virtual {p1, v8, v9}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDefaultValueForObjectAttr(J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v8, v9, v4}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setObjAttribute(JLjava/lang/Object;)V

    goto/16 :goto_7

    .line 357
    :cond_9
    instance-of v4, v10, Ljava/lang/String;

    if-eqz v4, :cond_b

    .line 358
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 359
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getEnumMap()Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getEnumMap()Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getEnumMap()Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 360
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getEnumMap()Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v8, v9, v4}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setIntAttribute(JI)V

    goto/16 :goto_7

    .line 362
    :cond_a
    invoke-virtual {p1, v8, v9}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDefaultValueForIntAttr(J)I

    move-result v4

    invoke-virtual {p1, v8, v9, v4}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setIntAttribute(JI)V

    goto/16 :goto_7

    .line 365
    :cond_b
    invoke-virtual {p1, v8, v9}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDefaultValueForIntAttr(J)I

    move-result v4

    invoke-virtual {p1, v8, v9, v4}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setIntAttribute(JI)V

    goto/16 :goto_7

    :cond_c
    if-eqz v6, :cond_e

    .line 341
    instance-of v4, v10, Lcom/alibaba/fastjson/JSONObject;

    if-nez v4, :cond_d

    goto :goto_4

    .line 345
    :cond_d
    :try_start_1
    move-object v4, v10

    nop

    nop

    invoke-virtual {p1, v8, v9, v4}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setMapAttribute(JLcom/alibaba/fastjson/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_7

    .line 347
    :catch_1
    invoke-virtual {v1}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object v4

    iget-object v4, v4, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    new-instance v5, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    const v6, 0x11561

    invoke-direct {v5, v0, v13, v6}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "] parse JsonObject&Map failed, use default value."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-direct {p0, p1, v8, v9}, Lcom/taobao/android/dinamicx/DXWidgetNodeParser;->setMapAttrDefault(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;J)V

    goto/16 :goto_7

    .line 342
    :cond_e
    :goto_4
    invoke-direct {p0, p1, v8, v9}, Lcom/taobao/android/dinamicx/DXWidgetNodeParser;->setMapAttrDefault(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;J)V

    goto/16 :goto_7

    :cond_f
    if-eqz v6, :cond_11

    .line 325
    instance-of v4, v10, Lcom/alibaba/fastjson/JSONArray;

    if-nez v4, :cond_10

    goto :goto_5

    .line 329
    :cond_10
    :try_start_2
    move-object v4, v10

    nop

    nop

    invoke-virtual {p1, v8, v9, v4}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setListAttribute(JLcom/alibaba/fastjson/JSONArray;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_7

    .line 331
    :catch_2
    invoke-virtual {v1}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object v4

    iget-object v4, v4, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    new-instance v5, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    const v6, 0x11560

    invoke-direct {v5, v0, v13, v6}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "] parse JsonArray&List failed, use default value."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-direct {p0, p1, v8, v9}, Lcom/taobao/android/dinamicx/DXWidgetNodeParser;->setListAttrDefault(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;J)V

    goto/16 :goto_7

    .line 326
    :cond_11
    :goto_5
    invoke-direct {p0, p1, v8, v9}, Lcom/taobao/android/dinamicx/DXWidgetNodeParser;->setListAttrDefault(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;J)V

    goto/16 :goto_7

    .line 322
    :cond_12
    invoke-virtual {v1}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object v5, p0

    move-object v7, p1

    invoke-direct/range {v5 .. v10}, Lcom/taobao/android/dinamicx/DXWidgetNodeParser;->parseNumType(Landroid/content/Context;Lcom/taobao/android/dinamicx/widget/DXWidgetNode;JLjava/lang/Object;)V

    goto/16 :goto_7

    :cond_13
    if-eqz v6, :cond_14

    .line 306
    :try_start_3
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_6

    .line 308
    :catch_3
    invoke-virtual {v1}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object v4

    iget-object v4, v4, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    new-instance v5, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    const v6, 0x1155f

    invoke-direct {v5, v0, v13, v6}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "] parse Color failed, use default value."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-virtual {p1, v8, v9}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDefaultValueForIntAttr(J)I

    move-result v4

    goto :goto_6

    .line 316
    :cond_14
    invoke-virtual {p1, v8, v9}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDefaultValueForIntAttr(J)I

    move-result v4

    .line 318
    :goto_6
    invoke-virtual {p1, v8, v9, v4}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setIntAttribute(JI)V

    goto/16 :goto_7

    :cond_15
    if-eqz v6, :cond_16

    .line 296
    instance-of v4, v10, Ljava/lang/String;

    if-eqz v4, :cond_16

    .line 297
    nop

    nop

    invoke-virtual {p1, v8, v9, v10}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setStringAttribute(JLjava/lang/String;)V

    goto/16 :goto_7

    .line 299
    :cond_16
    invoke-virtual {p1, v8, v9}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDefaultValueForStringAttr(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v8, v9, v4}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setStringAttribute(JLjava/lang/String;)V

    goto/16 :goto_7

    :cond_17
    if-nez v6, :cond_18

    .line 281
    invoke-direct {p0, p1, v8, v9}, Lcom/taobao/android/dinamicx/DXWidgetNodeParser;->setDoubleAttrDefault(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;J)V

    goto/16 :goto_7

    .line 284
    :cond_18
    :try_start_4
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {p1, v8, v9, v4, v5}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setDoubleAttribute(JD)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_7

    .line 286
    :catch_4
    invoke-virtual {v1}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object v4

    iget-object v4, v4, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    new-instance v5, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    const v6, 0x1155e

    invoke-direct {v5, v0, v13, v6}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "] parse Double failed, use default value."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-direct {p0, p1, v8, v9}, Lcom/taobao/android/dinamicx/DXWidgetNodeParser;->setDoubleAttrDefault(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;J)V

    goto/16 :goto_7

    :cond_19
    if-nez v6, :cond_1a

    .line 265
    invoke-direct {p0, p1, v8, v9}, Lcom/taobao/android/dinamicx/DXWidgetNodeParser;->setLongAttrDefault(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;J)V

    goto/16 :goto_7

    .line 268
    :cond_1a
    :try_start_5
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p1, v8, v9, v4, v5}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setLongAttribute(JJ)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_7

    .line 270
    :catch_5
    invoke-virtual {v1}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object v4

    iget-object v4, v4, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    new-instance v5, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    const v6, 0x1155d

    invoke-direct {v5, v0, v13, v6}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "] parse Long failed, use default value."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-direct {p0, p1, v8, v9}, Lcom/taobao/android/dinamicx/DXWidgetNodeParser;->setLongAttrDefault(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;J)V

    goto :goto_7

    :cond_1b
    if-nez v6, :cond_1c

    .line 249
    invoke-direct {p0, p1, v8, v9}, Lcom/taobao/android/dinamicx/DXWidgetNodeParser;->setIntegerAttrDefault(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;J)V

    goto :goto_7

    .line 252
    :cond_1c
    :try_start_6
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v8, v9, v4}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setIntAttribute(JI)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_7

    .line 254
    :catch_6
    invoke-virtual {v1}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object v4

    iget-object v4, v4, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    new-instance v5, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    const v6, 0x1155c

    invoke-direct {v5, v0, v13, v6}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "] parse Integer failed, use default value."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-direct {p0, p1, v8, v9}, Lcom/taobao/android/dinamicx/DXWidgetNodeParser;->setIntegerAttrDefault(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;J)V

    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_1d
    return-void
.end method

.method private parseNumType(Landroid/content/Context;Lcom/taobao/android/dinamicx/widget/DXWidgetNode;JLjava/lang/Object;)V
    .locals 1

    .line 404
    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p3, p4}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDefaultValueForIntAttr(J)I

    move-result v0

    invoke-static {p1, p5, v0}, Lcom/taobao/android/dinamicx/widget/utils/DXScreenTool;->getPx(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    .line 405
    invoke-virtual {p2, p3, p4, p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setIntAttribute(JI)V

    return-void
.end method

.method private parseWidgetNode(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)Z
    .locals 4

    .line 99
    invoke-static {p1}, Lcom/taobao/android/dinamicx/DXWidgetNodeParser;->isWidgetNodeGone(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x400

    .line 103
    invoke-virtual {p1, v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getStatInPrivateFlags(I)Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_3

    .line 106
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getLayoutWidth()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getLayoutHeight()I

    move-result v0

    if-nez v0, :cond_2

    .line 107
    :cond_1
    invoke-direct {p0, p1}, Lcom/taobao/android/dinamicx/DXWidgetNodeParser;->parseAttrsInWidgetNode(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)V

    .line 108
    invoke-virtual {p1, v2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setStatFlag(I)V

    .line 111
    :cond_2
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getLayoutWidth()I

    move-result v0

    const/4 v3, -0x2

    if-eq v0, v3, :cond_3

    .line 112
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getLayoutHeight()I

    move-result v0

    if-eq v0, v3, :cond_3

    return v1

    .line 117
    :cond_3
    invoke-virtual {p1, v2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getStatInPrivateFlags(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 118
    invoke-virtual {p1, v1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getStatInPrivateFlags(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 120
    :cond_4
    invoke-direct {p0, p1}, Lcom/taobao/android/dinamicx/DXWidgetNodeParser;->parseAttrsInWidgetNode(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)V

    .line 121
    invoke-virtual {p1, v2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setStatFlag(I)V

    :cond_5
    const/16 v0, 0x1000

    .line 124
    invoke-virtual {p1, v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getStatInPrivateFlags(I)Z

    move-result v2

    if-nez v2, :cond_6

    .line 125
    invoke-virtual {p1, v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setStatFlag(I)V

    .line 127
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getChildrenCount()I

    move-result v0

    if-lez v0, :cond_6

    .line 128
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->onBeforeBindChildData()V

    :cond_6
    return v1
.end method

.method private recursiveParseWT(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)V
    .locals 4

    const/16 v0, 0x400

    .line 78
    invoke-virtual {p1, v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->unsetStatFlag(I)V

    .line 80
    invoke-direct {p0, p1}, Lcom/taobao/android/dinamicx/DXWidgetNodeParser;->parseWidgetNode(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 84
    :cond_0
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDirection()I

    move-result v0

    const/4 v1, 0x0

    .line 85
    :goto_0
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getChildrenCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 86
    invoke-virtual {p1, v1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getChildAt(I)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object v2

    .line 87
    invoke-virtual {v2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->setParentDirectionSpec(I)V

    .line 88
    invoke-direct {p0, v2}, Lcom/taobao/android/dinamicx/DXWidgetNodeParser;->recursiveParseWT(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 92
    invoke-virtual {p1, v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->unsetStatFlag(I)V

    const v0, 0x8000

    .line 93
    invoke-virtual {p1, v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setStatFlag(I)V

    const/4 v0, 0x4

    .line 94
    invoke-virtual {p1, v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setStatFlag(I)V

    return-void
.end method

.method private setDoubleAttrDefault(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;J)V
    .locals 2

    .line 392
    invoke-virtual {p1, p2, p3}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDefaultValueForDoubleAttr(J)D

    move-result-wide v0

    invoke-virtual {p1, p2, p3, v0, v1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setDoubleAttribute(JD)V

    return-void
.end method

.method private setIntegerAttrDefault(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;J)V
    .locals 1

    .line 384
    invoke-virtual {p1, p2, p3}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDefaultValueForIntAttr(J)I

    move-result v0

    invoke-virtual {p1, p2, p3, v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setIntAttribute(JI)V

    return-void
.end method

.method private setListAttrDefault(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;J)V
    .locals 1

    .line 396
    invoke-virtual {p1, p2, p3}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDefaultValueForListAttr(J)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    invoke-virtual {p1, p2, p3, v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setListAttribute(JLcom/alibaba/fastjson/JSONArray;)V

    return-void
.end method

.method private setLongAttrDefault(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;J)V
    .locals 2

    .line 388
    invoke-virtual {p1, p2, p3}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDefaultValueForLongAttr(J)J

    move-result-wide v0

    invoke-virtual {p1, p2, p3, v0, v1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setLongAttribute(JJ)V

    return-void
.end method

.method private setMapAttrDefault(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;J)V
    .locals 1

    .line 400
    invoke-virtual {p1, p2, p3}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDefaultValueForMapAttr(J)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    invoke-virtual {p1, p2, p3, v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setMapAttribute(JLcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method


# virtual methods
.method public parseInMeasure(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)V
    .locals 4

    const/16 v0, 0x400

    .line 36
    invoke-virtual {p1, v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setStatFlag(I)V

    .line 39
    invoke-direct {p0, p1}, Lcom/taobao/android/dinamicx/DXWidgetNodeParser;->parseWidgetNode(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 43
    :cond_0
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDirection()I

    move-result v0

    const/4 v1, 0x0

    .line 44
    :goto_0
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getChildrenCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 45
    invoke-virtual {p1, v1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getChildAt(I)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object v2

    .line 46
    invoke-virtual {v2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->setParentDirectionSpec(I)V

    .line 47
    invoke-virtual {p0, v2}, Lcom/taobao/android/dinamicx/DXWidgetNodeParser;->parseInMeasure(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public parseWT(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;
    .locals 4

    .line 60
    :try_start_0
    invoke-direct {p0, p1}, Lcom/taobao/android/dinamicx/DXWidgetNodeParser;->recursiveParseWT(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 62
    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 65
    :cond_0
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object p1

    iget-object p1, p1, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    new-instance v0, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    const v1, 0x11559

    const-string v2, "Pipeline"

    const-string v3, "Pipeline_Stage_Load_Binary"

    invoke-direct {v0, v2, v3, v1}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    return-object p1
.end method
