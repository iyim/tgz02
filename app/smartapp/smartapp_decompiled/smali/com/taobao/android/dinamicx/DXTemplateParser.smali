.class public Lcom/taobao/android/dinamicx/DXTemplateParser;
.super Ljava/lang/Object;
.source "DXTemplateParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private parseNumType(Landroid/content/Context;Lcom/taobao/android/dinamicx/widget/DXWidgetNode;JLjava/lang/Object;)V
    .locals 1

    .line 304
    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p3, p4}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDefaultValueForIntAttr(J)I

    move-result v0

    invoke-static {p1, p5, v0}, Lcom/taobao/android/dinamicx/widget/utils/DXScreenTool;->getPx(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    .line 305
    invoke-virtual {p2, p3, p4, p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setIntAttribute(JI)V

    return-void
.end method

.method private recursiveParseWT(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Lcom/taobao/android/dinamicx/DXRuntimeContext;)V
    .locals 20

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    .line 48
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getVisibility()I

    move-result v0

    const/4 v10, 0x2

    if-ne v0, v10, :cond_0

    return-void

    .line 53
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDataParsersExprNode()Landroid/support/v4/util/LongSparseArray;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 55
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDataParsersExprNode()Landroid/support/v4/util/LongSparseArray;

    move-result-object v0

    const-wide v12, 0x5086155c409bd152L    # 8.182680092428053E79

    invoke-virtual {v0, v12, v13}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    const v14, 0x1155a

    const-string v15, "Pipeline_Stage_Load_Binary"

    const/4 v6, 0x0

    const-string v4, "Pipeline"

    if-eqz v0, :cond_5

    .line 58
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDataParsersExprNode()Landroid/support/v4/util/LongSparseArray;

    move-result-object v0

    invoke-virtual {v0, v12, v13}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/android/dinamicx/expression/DXExprNode;

    .line 60
    :try_start_0
    invoke-virtual {v0, v6, v9}, Lcom/taobao/android/dinamicx/expression/DXExprNode;->evaluate(Lcom/taobao/android/dinamicx/expression/event/DXEvent;Lcom/taobao/android/dinamicx/DXRuntimeContext;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 62
    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 65
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    new-instance v1, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    invoke-direct {v1, v4, v15, v14}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v6

    .line 72
    :goto_0
    :try_start_1
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 73
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getEnumMap()Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getEnumMap()Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    move-result-object v1

    invoke-virtual {v1, v12, v13}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getEnumMap()Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    move-result-object v1

    invoke-virtual {v1, v12, v13}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 75
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getEnumMap()Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    move-result-object v1

    invoke-virtual {v1, v12, v13}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v8, v12, v13, v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setIntAttribute(JI)V

    .line 76
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getVisibility()I

    move-result v0

    if-ne v0, v10, :cond_5

    return-void

    .line 80
    :cond_2
    invoke-virtual {v8, v12, v13}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDefaultValueForIntAttr(J)I

    move-result v0

    invoke-virtual {v8, v12, v13, v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setIntAttribute(JI)V

    goto :goto_1

    .line 83
    :cond_3
    invoke-virtual {v8, v12, v13}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDefaultValueForIntAttr(J)I

    move-result v0

    invoke-virtual {v8, v12, v13, v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setIntAttribute(JI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 86
    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 87
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 89
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    new-instance v1, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    const v2, 0x1155b

    invoke-direct {v1, v4, v15, v2}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_1
    const/4 v5, 0x0

    .line 97
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDataParsersExprNode()Landroid/support/v4/util/LongSparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v0

    if-ge v5, v0, :cond_23

    .line 98
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDataParsersExprNode()Landroid/support/v4/util/LongSparseArray;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/support/v4/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    cmp-long v0, v2, v12

    if-nez v0, :cond_6

    move-object v11, v4

    move/from16 v19, v5

    move-object/from16 v16, v6

    goto/16 :goto_8

    .line 105
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDataParsersExprNode()Landroid/support/v4/util/LongSparseArray;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/taobao/android/dinamicx/expression/DXExprNode;

    .line 109
    :try_start_2
    invoke-virtual {v1, v6, v9}, Lcom/taobao/android/dinamicx/expression/DXExprNode;->evaluate(Lcom/taobao/android/dinamicx/expression/event/DXEvent;Lcom/taobao/android/dinamicx/DXRuntimeContext;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v6, v0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object/from16 v16, v0

    .line 111
    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 112
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    .line 114
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    new-instance v6, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    invoke-direct {v6, v4, v15, v14}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    .line 120
    :goto_3
    invoke-virtual {v1}, Lcom/taobao/android/dinamicx/expression/DXExprNode;->getDataType()S

    move-result v0

    const/16 v1, 0x60

    if-ne v0, v1, :cond_8

    .line 124
    invoke-virtual/range {p2 .. p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object/from16 v1, p0

    move-wide/from16 v17, v2

    move-object v2, v0

    move-object/from16 v3, p1

    move-object v11, v4

    move/from16 v19, v5

    move-wide/from16 v4, v17

    const/16 v16, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/taobao/android/dinamicx/DXTemplateParser;->parseNumType(Landroid/content/Context;Lcom/taobao/android/dinamicx/widget/DXWidgetNode;JLjava/lang/Object;)V

    goto/16 :goto_8

    :cond_8
    move-wide/from16 v17, v2

    move-object v11, v4

    move/from16 v19, v5

    const/16 v16, 0x0

    const/16 v1, 0x260

    if-ne v0, v1, :cond_b

    .line 127
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getEnumMap()Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getEnumMap()Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    move-result-object v1

    move-wide/from16 v4, v17

    invoke-virtual {v1, v4, v5}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getEnumMap()Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 129
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getEnumMap()Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v8, v4, v5, v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setIntAttribute(JI)V

    goto/16 :goto_8

    :cond_9
    move-wide/from16 v4, v17

    .line 131
    :cond_a
    invoke-virtual/range {p2 .. p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/taobao/android/dinamicx/DXTemplateParser;->parseNumType(Landroid/content/Context;Lcom/taobao/android/dinamicx/widget/DXWidgetNode;JLjava/lang/Object;)V

    goto/16 :goto_8

    :cond_b
    move-wide/from16 v4, v17

    const/4 v1, 0x1

    if-eqz v6, :cond_c

    const/4 v2, 0x1

    goto :goto_4

    :cond_c
    const/4 v2, 0x0

    :goto_4
    const-string v3, "="

    const-string v12, "["

    const-string v13, "DXTemplateParser"

    const-string v14, "Pipeline_Stage_Parse_Widget"

    if-eq v0, v1, :cond_21

    if-eq v0, v10, :cond_1f

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1d

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1b

    const/16 v1, 0x10

    if-eq v0, v1, :cond_19

    const/16 v1, 0x20

    if-eq v0, v1, :cond_18

    const/16 v1, 0x40

    if-eq v0, v1, :cond_18

    const/16 v1, 0x80

    if-eq v0, v1, :cond_15

    const/16 v1, 0x100

    if-eq v0, v1, :cond_12

    const/16 v1, 0x200

    if-eq v0, v1, :cond_f

    const/16 v1, 0x400

    if-eq v0, v1, :cond_d

    goto/16 :goto_8

    :cond_d
    if-eqz v6, :cond_e

    .line 261
    invoke-virtual {v8, v4, v5, v6}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setObjAttribute(JLjava/lang/Object;)V

    goto/16 :goto_8

    .line 263
    :cond_e
    invoke-virtual {v8, v4, v5}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDefaultValueForObjectAttr(J)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v8, v4, v5, v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setObjAttribute(JLjava/lang/Object;)V

    goto/16 :goto_8

    .line 248
    :cond_f
    instance-of v0, v6, Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 249
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 250
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getEnumMap()Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getEnumMap()Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getEnumMap()Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 251
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getEnumMap()Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v8, v4, v5, v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setIntAttribute(JI)V

    goto/16 :goto_8

    .line 253
    :cond_10
    invoke-virtual {v8, v4, v5}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDefaultValueForIntAttr(J)I

    move-result v0

    invoke-virtual {v8, v4, v5, v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setIntAttribute(JI)V

    goto/16 :goto_8

    .line 256
    :cond_11
    invoke-virtual {v8, v4, v5}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDefaultValueForIntAttr(J)I

    move-result v0

    invoke-virtual {v8, v4, v5, v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setIntAttribute(JI)V

    goto/16 :goto_8

    :cond_12
    if-eqz v2, :cond_14

    .line 232
    instance-of v0, v6, Lcom/alibaba/fastjson/JSONObject;

    if-nez v0, :cond_13

    goto :goto_5

    .line 236
    :cond_13
    :try_start_3
    move-object v0, v6

    nop

    nop

    invoke-virtual {v8, v4, v5, v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setMapAttribute(JLcom/alibaba/fastjson/JSONObject;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_8

    .line 238
    :catch_3
    invoke-virtual/range {p2 .. p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    new-instance v1, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    const v2, 0x11561

    invoke-direct {v1, v11, v14, v2}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "] parse JsonObject&Map failed, use default value."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-direct {v7, v8, v4, v5}, Lcom/taobao/android/dinamicx/DXTemplateParser;->setMapAttrDefault(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;J)V

    goto/16 :goto_8

    .line 233
    :cond_14
    :goto_5
    invoke-direct {v7, v8, v4, v5}, Lcom/taobao/android/dinamicx/DXTemplateParser;->setMapAttrDefault(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;J)V

    goto/16 :goto_8

    :cond_15
    if-eqz v2, :cond_17

    .line 216
    instance-of v0, v6, Lcom/alibaba/fastjson/JSONArray;

    if-nez v0, :cond_16

    goto :goto_6

    .line 220
    :cond_16
    :try_start_4
    move-object v0, v6

    nop

    nop

    invoke-virtual {v8, v4, v5, v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setListAttribute(JLcom/alibaba/fastjson/JSONArray;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_8

    .line 222
    :catch_4
    invoke-virtual/range {p2 .. p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    new-instance v1, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    const v2, 0x11560

    invoke-direct {v1, v11, v14, v2}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "] parse JsonArray&List failed, use default value."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-direct {v7, v8, v4, v5}, Lcom/taobao/android/dinamicx/DXTemplateParser;->setListAttrDefault(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;J)V

    goto/16 :goto_8

    .line 217
    :cond_17
    :goto_6
    invoke-direct {v7, v8, v4, v5}, Lcom/taobao/android/dinamicx/DXTemplateParser;->setListAttrDefault(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;J)V

    goto/16 :goto_8

    .line 213
    :cond_18
    invoke-virtual/range {p2 .. p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/taobao/android/dinamicx/DXTemplateParser;->parseNumType(Landroid/content/Context;Lcom/taobao/android/dinamicx/widget/DXWidgetNode;JLjava/lang/Object;)V

    goto/16 :goto_8

    :cond_19
    if-eqz v2, :cond_1a

    .line 196
    :try_start_5
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_7

    .line 198
    :catch_5
    invoke-virtual/range {p2 .. p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    new-instance v1, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " color obj "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v10, 0x1155f

    invoke-direct {v1, v11, v14, v10, v2}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "] parse Color failed, use default value."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-virtual {v8, v4, v5}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDefaultValueForIntAttr(J)I

    move-result v0

    goto :goto_7

    .line 207
    :cond_1a
    invoke-virtual {v8, v4, v5}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDefaultValueForIntAttr(J)I

    move-result v0

    .line 209
    :goto_7
    invoke-virtual {v8, v4, v5, v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setIntAttribute(JI)V

    goto/16 :goto_8

    :cond_1b
    if-eqz v2, :cond_1c

    .line 186
    instance-of v0, v6, Ljava/lang/String;

    if-eqz v0, :cond_1c

    .line 187
    nop

    nop

    invoke-virtual {v8, v4, v5, v6}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setStringAttribute(JLjava/lang/String;)V

    goto/16 :goto_8

    .line 189
    :cond_1c
    invoke-virtual {v8, v4, v5}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDefaultValueForStringAttr(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v4, v5, v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setStringAttribute(JLjava/lang/String;)V

    goto/16 :goto_8

    :cond_1d
    if-nez v2, :cond_1e

    .line 171
    invoke-direct {v7, v8, v4, v5}, Lcom/taobao/android/dinamicx/DXTemplateParser;->setDoubleAttrDefault(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;J)V

    goto/16 :goto_8

    .line 174
    :cond_1e
    :try_start_6
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {v8, v4, v5, v0, v1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setDoubleAttribute(JD)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_8

    .line 176
    :catch_6
    invoke-virtual/range {p2 .. p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    new-instance v1, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    const v2, 0x1155e

    invoke-direct {v1, v11, v14, v2}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "] parse Double failed, use default value."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-direct {v7, v8, v4, v5}, Lcom/taobao/android/dinamicx/DXTemplateParser;->setDoubleAttrDefault(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;J)V

    goto/16 :goto_8

    :cond_1f
    if-nez v2, :cond_20

    .line 155
    invoke-direct {v7, v8, v4, v5}, Lcom/taobao/android/dinamicx/DXTemplateParser;->setLongAttrDefault(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;J)V

    goto/16 :goto_8

    .line 158
    :cond_20
    :try_start_7
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {v8, v4, v5, v0, v1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setLongAttribute(JJ)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_8

    .line 160
    :catch_7
    invoke-virtual/range {p2 .. p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    new-instance v1, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    const v2, 0x1155d

    invoke-direct {v1, v11, v14, v2}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "] parse Long failed, use default value."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-direct {v7, v8, v4, v5}, Lcom/taobao/android/dinamicx/DXTemplateParser;->setLongAttrDefault(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;J)V

    goto :goto_8

    :cond_21
    if-nez v2, :cond_22

    .line 139
    invoke-direct {v7, v8, v4, v5}, Lcom/taobao/android/dinamicx/DXTemplateParser;->setIntegerAttrDefault(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;J)V

    goto :goto_8

    .line 142
    :cond_22
    :try_start_8
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v8, v4, v5, v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setIntAttribute(JI)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    .line 144
    :catch_8
    invoke-virtual/range {p2 .. p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    new-instance v1, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    const v2, 0x1155c

    invoke-direct {v1, v11, v14, v2}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "] parse Integer failed, use default value."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-direct {v7, v8, v4, v5}, Lcom/taobao/android/dinamicx/DXTemplateParser;->setIntegerAttrDefault(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;J)V

    :goto_8
    add-int/lit8 v5, v19, 0x1

    move-object v4, v11

    move-object/from16 v6, v16

    const/4 v10, 0x2

    const-wide v12, 0x5086155c409bd152L    # 8.182680092428053E79

    const v14, 0x1155a

    goto/16 :goto_2

    .line 274
    :cond_23
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->onBeforeBindChildData()V

    .line 275
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDirection()I

    move-result v0

    const/4 v1, 0x0

    .line 276
    :goto_9
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getChildrenCount()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 277
    invoke-virtual {v8, v1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getChildAt(I)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object v2

    .line 278
    invoke-virtual {v2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->setParentDirectionSpec(I)V

    .line 279
    invoke-virtual {v2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object v3

    invoke-direct {v7, v2, v3}, Lcom/taobao/android/dinamicx/DXTemplateParser;->recursiveParseWT(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Lcom/taobao/android/dinamicx/DXRuntimeContext;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_24
    return-void
.end method

.method private setDoubleAttrDefault(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;J)V
    .locals 2

    .line 292
    invoke-virtual {p1, p2, p3}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDefaultValueForDoubleAttr(J)D

    move-result-wide v0

    invoke-virtual {p1, p2, p3, v0, v1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setDoubleAttribute(JD)V

    return-void
.end method

.method private setIntegerAttrDefault(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;J)V
    .locals 1

    .line 284
    invoke-virtual {p1, p2, p3}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDefaultValueForIntAttr(J)I

    move-result v0

    invoke-virtual {p1, p2, p3, v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setIntAttribute(JI)V

    return-void
.end method

.method private setListAttrDefault(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;J)V
    .locals 1

    .line 296
    invoke-virtual {p1, p2, p3}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDefaultValueForListAttr(J)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    invoke-virtual {p1, p2, p3, v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setListAttribute(JLcom/alibaba/fastjson/JSONArray;)V

    return-void
.end method

.method private setLongAttrDefault(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;J)V
    .locals 2

    .line 288
    invoke-virtual {p1, p2, p3}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDefaultValueForLongAttr(J)J

    move-result-wide v0

    invoke-virtual {p1, p2, p3, v0, v1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setLongAttribute(JJ)V

    return-void
.end method

.method private setMapAttrDefault(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;J)V
    .locals 1

    .line 300
    invoke-virtual {p1, p2, p3}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDefaultValueForMapAttr(J)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    invoke-virtual {p1, p2, p3, v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setMapAttribute(JLcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method


# virtual methods
.method public parseWT(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Lcom/taobao/android/dinamicx/DXRuntimeContext;)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 33
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/taobao/android/dinamicx/DXTemplateParser;->recursiveParseWT(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Lcom/taobao/android/dinamicx/DXRuntimeContext;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 35
    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 38
    :cond_0
    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object p1

    iget-object p1, p1, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    new-instance p2, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    const v0, 0x11559

    const-string v1, "Pipeline"

    const-string v2, "Pipeline_Stage_Load_Binary"

    invoke-direct {p2, v1, v2, v0}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    return-object p1
.end method
