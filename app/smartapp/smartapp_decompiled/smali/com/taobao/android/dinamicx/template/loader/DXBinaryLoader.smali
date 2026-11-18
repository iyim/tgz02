.class public Lcom/taobao/android/dinamicx/template/loader/DXBinaryLoader;
.super Ljava/lang/Object;
.source "DXBinaryLoader.java"


# static fields
.field private static final DEFAULT_AUTO_ID:I = 0x3e8

.field private static final FILE_START_TAG:Ljava/lang/String; = "ALIDX"

.field public static final MAJOR_VERSION:I = 0x3

.field public static final MINOR_VERSION_0:I = 0x0

.field public static final MINOR_VERSION_1:I = 0x1

.field public static final STATE_continue:I = 0x0

.field public static final STATE_failed:I = 0x2

.field public static final STATE_successful:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BinaryLoader_TMTEST"

.field public static final TYPE_ADAPTIVE_UNIT:S = 0x20s

.field public static final TYPE_COLOR:S = 0x10s

.field public static final TYPE_DOUBLE:S = 0x4s

.field public static final TYPE_ENUM:S = 0x200s

.field public static final TYPE_INT:S = 0x1s

.field public static final TYPE_LIST:S = 0x80s

.field public static final TYPE_LONG:S = 0x2s

.field public static final TYPE_MAP:S = 0x100s

.field public static final TYPE_NATIVE_UNIT:S = 0x40s

.field public static final TYPE_OBJECT:S = 0x400s

.field public static final TYPE_STRING:S = 0x8s


# instance fields
.field private autoId:I

.field private enumLoader:Lcom/taobao/android/dinamicx/template/loader/binary/DXEnumLoader;

.field private exprCodeLoader:Lcom/taobao/android/dinamicx/template/loader/binary/DXExprCodeLoader;

.field private minorVersion:I

.field private nodeStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/taobao/android/dinamicx/widget/DXWidgetNode;",
            ">;"
        }
    .end annotation
.end field

.field private stringLoader:Lcom/taobao/android/dinamicx/template/loader/binary/DXStringLoader;

.field private uiCodeLoader:Lcom/taobao/android/dinamicx/template/loader/binary/DXUiCodeLoader;

.field private varStringLoader:Lcom/taobao/android/dinamicx/template/loader/binary/DXStringLoader;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/template/loader/DXBinaryLoader;->nodeStack:Ljava/util/Stack;

    const/16 v0, 0x3e8

    .line 93
    iput v0, p0, Lcom/taobao/android/dinamicx/template/loader/DXBinaryLoader;->autoId:I

    .line 109
    new-instance v0, Lcom/taobao/android/dinamicx/template/loader/binary/DXStringLoader;

    invoke-direct {v0}, Lcom/taobao/android/dinamicx/template/loader/binary/DXStringLoader;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/template/loader/DXBinaryLoader;->stringLoader:Lcom/taobao/android/dinamicx/template/loader/binary/DXStringLoader;

    .line 110
    new-instance v0, Lcom/taobao/android/dinamicx/template/loader/binary/DXStringLoader;

    invoke-direct {v0}, Lcom/taobao/android/dinamicx/template/loader/binary/DXStringLoader;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/template/loader/DXBinaryLoader;->varStringLoader:Lcom/taobao/android/dinamicx/template/loader/binary/DXStringLoader;

    .line 111
    new-instance v0, Lcom/taobao/android/dinamicx/template/loader/binary/DXExprCodeLoader;

    iget-object v1, p0, Lcom/taobao/android/dinamicx/template/loader/DXBinaryLoader;->varStringLoader:Lcom/taobao/android/dinamicx/template/loader/binary/DXStringLoader;

    invoke-direct {v0, v1}, Lcom/taobao/android/dinamicx/template/loader/binary/DXExprCodeLoader;-><init>(Lcom/taobao/android/dinamicx/template/loader/binary/DXStringLoader;)V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/template/loader/DXBinaryLoader;->exprCodeLoader:Lcom/taobao/android/dinamicx/template/loader/binary/DXExprCodeLoader;

    .line 112
    new-instance v0, Lcom/taobao/android/dinamicx/template/loader/binary/DXUiCodeLoader;

    invoke-direct {v0}, Lcom/taobao/android/dinamicx/template/loader/binary/DXUiCodeLoader;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/template/loader/DXBinaryLoader;->uiCodeLoader:Lcom/taobao/android/dinamicx/template/loader/binary/DXUiCodeLoader;

    .line 113
    new-instance v0, Lcom/taobao/android/dinamicx/template/loader/binary/DXEnumLoader;

    iget-object v1, p0, Lcom/taobao/android/dinamicx/template/loader/DXBinaryLoader;->varStringLoader:Lcom/taobao/android/dinamicx/template/loader/binary/DXStringLoader;

    invoke-direct {v0, v1}, Lcom/taobao/android/dinamicx/template/loader/binary/DXEnumLoader;-><init>(Lcom/taobao/android/dinamicx/template/loader/binary/DXStringLoader;)V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/template/loader/DXBinaryLoader;->enumLoader:Lcom/taobao/android/dinamicx/template/loader/binary/DXEnumLoader;

    return-void
.end method

.method private createWidgetTree(Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;Lcom/taobao/android/dinamicx/DXRuntimeContext;Landroid/content/Context;)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    const-string v3, "Pipeline_Stage_Load_Binary"

    const-string v4, "Pipeline"

    const/4 v5, 0x0

    if-nez p1, :cond_0

    return-object v5

    .line 263
    :cond_0
    :try_start_0
    iget-object v0, v1, Lcom/taobao/android/dinamicx/template/loader/DXBinaryLoader;->nodeStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    const/16 v0, 0x3e8

    .line 264
    iput v0, v1, Lcom/taobao/android/dinamicx/template/loader/DXBinaryLoader;->autoId:I

    .line 267
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->readByte()B

    move-result v0

    const/4 v6, 0x0

    move-object v7, v5

    const/4 v8, 0x0

    :goto_0
    const/4 v10, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v10, :cond_1

    const-string v8, "BinaryLoader_TMTEST"

    .line 537
    new-array v11, v10, [Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "invalidate tag type:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v11, v6

    invoke-static {v8, v11}, Lcom/taobao/android/dinamicx/log/DXLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v8, 0x2

    goto/16 :goto_e

    .line 526
    :cond_1
    iget-object v0, v1, Lcom/taobao/android/dinamicx/template/loader/DXBinaryLoader;->nodeStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 527
    iget-object v0, v1, Lcom/taobao/android/dinamicx/template/loader/DXBinaryLoader;->nodeStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    .line 528
    invoke-virtual {v0, v7}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->addChild(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)V

    move-object v7, v0

    goto/16 :goto_e

    :cond_2
    const/4 v8, 0x1

    goto/16 :goto_e

    .line 272
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->readLong()J

    move-result-wide v11

    .line 273
    invoke-virtual/range {p2 .. p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getWidgetNodeMap()Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    move-result-object v0

    if-nez v0, :cond_4

    return-object v5

    .line 276
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getWidgetNodeMap()Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    move-result-object v0

    invoke-virtual {v0, v11, v12}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/android/dinamicx/widget/IDXBuilderWidgetNode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    if-eqz v0, :cond_5

    .line 281
    :try_start_1
    invoke-interface {v0, v2}, Lcom/taobao/android/dinamicx/widget/IDXBuilderWidgetNode;->build(Ljava/lang/Object;)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object v13
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 282
    :try_start_2
    iget v0, v1, Lcom/taobao/android/dinamicx/template/loader/DXBinaryLoader;->autoId:I

    add-int/lit8 v14, v0, 0x1

    iput v14, v1, Lcom/taobao/android/dinamicx/template/loader/DXBinaryLoader;->autoId:I

    invoke-virtual {v13, v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setAutoId(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v14, p2

    .line 283
    :try_start_3
    invoke-virtual {v13, v14}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setDXRuntimeContext(Lcom/taobao/android/dinamicx/DXRuntimeContext;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const/4 v6, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v14, p2

    goto :goto_1

    :catch_2
    move-exception v0

    move-object/from16 v14, p2

    move-object v13, v5

    .line 285
    :goto_1
    :try_start_4
    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->isDebug()Z

    move-result v15

    if-eqz v15, :cond_6

    .line 286
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_5
    move-object/from16 v14, p2

    .line 291
    new-instance v0, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    const v13, 0x11188

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u521b\u5efa\u539f\u578b\u6811\u627e\u4e0d\u5230\u6ce8\u518c\u7684widgetNode nodeId"

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v4, v3, v13, v6}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 295
    invoke-virtual/range {p2 .. p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object v6

    iget-object v6, v6, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v13, v5

    const/4 v6, 0x0

    :cond_6
    :goto_2
    if-eqz v7, :cond_7

    .line 300
    iget-object v0, v1, Lcom/taobao/android/dinamicx/template/loader/DXBinaryLoader;->nodeStack:Ljava/util/Stack;

    invoke-virtual {v0, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    if-nez v6, :cond_9

    .line 304
    iget-object v0, v1, Lcom/taobao/android/dinamicx/template/loader/DXBinaryLoader;->nodeStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-nez v0, :cond_8

    .line 305
    new-instance v0, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    const v2, 0x11180

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u521b\u5efa\u539f\u578b\u6811root\u8282\u70b9\u5931\u8d25 !getNodeResult nodeStack.size() nodeId"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v4, v3, v2, v6}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 309
    invoke-virtual/range {p2 .. p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object v2

    iget-object v2, v2, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v5

    .line 312
    :cond_8
    new-instance v0, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    const v6, 0x11181

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "\u521b\u5efa\u8282\u70b9\u5931\u8d25 !getNodeResult nodeId"

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v4, v3, v6, v7}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 316
    invoke-virtual/range {p2 .. p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object v6

    iget-object v6, v6, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->readByte()B

    move-result v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    const/4 v7, 0x0

    :goto_3
    const-string v15, " key "

    const-string v5, " value "

    const-string v9, "nodeId"

    if-ge v7, v6, :cond_1c

    .line 325
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->readShort()S

    move-result v0

    if-eq v0, v10, :cond_1a

    const/4 v10, 0x2

    if-eq v0, v10, :cond_19

    const/4 v10, 0x4

    if-eq v0, v10, :cond_18

    const/16 v10, 0x8

    if-eq v0, v10, :cond_16

    const/16 v10, 0x10

    if-eq v0, v10, :cond_15

    const/16 v10, 0x20

    if-eq v0, v10, :cond_14

    const/16 v10, 0x40

    if-eq v0, v10, :cond_13

    const/16 v10, 0x80

    if-eq v0, v10, :cond_10

    const/16 v10, 0x100

    if-eq v0, v10, :cond_c

    const/16 v10, 0x200

    if-eq v0, v10, :cond_b

    :cond_a
    :goto_4
    move v10, v6

    move/from16 v16, v7

    goto/16 :goto_7

    .line 446
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->readLong()J

    move-result-wide v9

    .line 447
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->readInt()I

    move-result v0

    if-eqz v13, :cond_a

    .line 449
    invoke-virtual {v13, v9, v10, v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setIntAttribute(JI)V

    goto :goto_4

    :cond_c
    move v10, v6

    move/from16 v16, v7

    .line 379
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->readLong()J

    move-result-wide v6

    move-object/from16 v17, v13

    .line 380
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->readLong()J

    move-result-wide v13
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 383
    :try_start_6
    iget-object v0, v1, Lcom/taobao/android/dinamicx/template/loader/DXBinaryLoader;->varStringLoader:Lcom/taobao/android/dinamicx/template/loader/binary/DXStringLoader;

    invoke-virtual {v0, v13, v14}, Lcom/taobao/android/dinamicx/template/loader/binary/DXStringLoader;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    .line 385
    :try_start_7
    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->isDebug()Z

    move-result v18

    if-eqz v18, :cond_d

    .line 386
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_d
    const/4 v0, 0x0

    :goto_5
    if-nez v0, :cond_e

    .line 390
    invoke-virtual/range {p2 .. p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    new-instance v2, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    const v8, 0x11184

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v3, v8, v5}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    return-object v2

    :cond_e
    if-eqz v17, :cond_f

    move-object/from16 v13, v17

    .line 398
    invoke-virtual {v13, v6, v7, v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setMapAttribute(JLcom/alibaba/fastjson/JSONObject;)V

    goto/16 :goto_7

    :cond_f
    move-object/from16 v13, v17

    goto/16 :goto_7

    :cond_10
    move v10, v6

    move/from16 v16, v7

    .line 353
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->readLong()J

    move-result-wide v5

    .line 354
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->readLong()J

    move-result-wide v14
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 357
    :try_start_8
    iget-object v0, v1, Lcom/taobao/android/dinamicx/template/loader/DXBinaryLoader;->varStringLoader:Lcom/taobao/android/dinamicx/template/loader/binary/DXStringLoader;

    invoke-virtual {v0, v14, v15}, Lcom/taobao/android/dinamicx/template/loader/binary/DXStringLoader;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_6

    :catch_4
    move-exception v0

    .line 359
    :try_start_9
    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->isDebug()Z

    move-result v7

    if-eqz v7, :cond_11

    .line 360
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_11
    const/4 v0, 0x0

    :goto_6
    if-nez v0, :cond_12

    .line 365
    invoke-virtual/range {p2 .. p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    new-instance v2, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    const v5, 0x11183

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v4, v3, v5, v6}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    return-object v2

    :cond_12
    if-eqz v13, :cond_1b

    .line 374
    invoke-virtual {v13, v5, v6, v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setListAttribute(JLcom/alibaba/fastjson/JSONArray;)V

    goto/16 :goto_7

    :cond_13
    move v10, v6

    move/from16 v16, v7

    .line 437
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->readLong()J

    move-result-wide v5

    .line 438
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->readDouble()D

    move-result-wide v14

    double-to-float v0, v14

    .line 439
    invoke-static {v2, v0}, Lcom/taobao/android/dinamicx/widget/utils/DXScreenTool;->dip2px(Landroid/content/Context;F)I

    move-result v0

    if-eqz v13, :cond_1b

    .line 441
    invoke-virtual {v13, v5, v6, v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setIntAttribute(JI)V

    goto/16 :goto_7

    :cond_14
    move v10, v6

    move/from16 v16, v7

    .line 428
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->readLong()J

    move-result-wide v5

    .line 429
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->readDouble()D

    move-result-wide v14

    double-to-float v0, v14

    .line 430
    invoke-static {v2, v0}, Lcom/taobao/android/dinamicx/widget/utils/DXScreenTool;->ap2px(Landroid/content/Context;F)I

    move-result v0

    if-eqz v13, :cond_1b

    .line 432
    invoke-virtual {v13, v5, v6, v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setIntAttribute(JI)V

    goto/16 :goto_7

    :cond_15
    move v10, v6

    move/from16 v16, v7

    .line 420
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->readLong()J

    move-result-wide v5

    .line 421
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->readInt()I

    move-result v0

    if-eqz v13, :cond_1b

    .line 423
    invoke-virtual {v13, v5, v6, v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setIntAttribute(JI)V

    goto/16 :goto_7

    :cond_16
    move v10, v6

    move/from16 v16, v7

    .line 403
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->readLong()J

    move-result-wide v6

    .line 404
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->readLong()J

    move-result-wide v14

    if-eqz v13, :cond_1b

    .line 406
    iget-object v0, v1, Lcom/taobao/android/dinamicx/template/loader/DXBinaryLoader;->varStringLoader:Lcom/taobao/android/dinamicx/template/loader/binary/DXStringLoader;

    invoke-virtual {v0, v14, v15}, Lcom/taobao/android/dinamicx/template/loader/binary/DXStringLoader;->getString(J)Ljava/lang/String;

    move-result-object v0

    .line 407
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_17

    .line 408
    invoke-virtual/range {p2 .. p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    new-instance v2, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    const v6, 0x11182

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v3, v6, v5}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    return-object v2

    .line 415
    :cond_17
    invoke-virtual {v13, v6, v7, v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setStringAttribute(JLjava/lang/String;)V

    goto :goto_7

    :cond_18
    move v10, v6

    move/from16 v16, v7

    .line 345
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->readLong()J

    move-result-wide v5

    .line 346
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->readDouble()D

    move-result-wide v14

    if-eqz v13, :cond_1b

    .line 348
    invoke-virtual {v13, v5, v6, v14, v15}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setDoubleAttribute(JD)V

    goto :goto_7

    :cond_19
    move v10, v6

    move/from16 v16, v7

    .line 337
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->readLong()J

    move-result-wide v5

    .line 338
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->readLong()J

    move-result-wide v14

    if-eqz v13, :cond_1b

    .line 340
    invoke-virtual {v13, v5, v6, v14, v15}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setLongAttribute(JJ)V

    goto :goto_7

    :cond_1a
    move v10, v6

    move/from16 v16, v7

    .line 329
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->readLong()J

    move-result-wide v5

    .line 330
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->readInt()I

    move-result v0

    if-eqz v13, :cond_1b

    .line 332
    invoke-virtual {v13, v5, v6, v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setIntAttribute(JI)V

    :cond_1b
    :goto_7
    add-int/lit8 v7, v16, 0x1

    move-object/from16 v14, p2

    move v6, v10

    const/4 v5, 0x0

    const/4 v10, 0x1

    goto/16 :goto_3

    .line 457
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->readByte()B

    move-result v0

    if-lez v0, :cond_1d

    if-eqz v13, :cond_1d

    .line 458
    invoke-virtual {v13}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDataParsersExprNode()Landroid/support/v4/util/LongSparseArray;

    move-result-object v6

    if-nez v6, :cond_1d

    .line 459
    invoke-virtual {v13, v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->newDataParsersExprNode(I)V

    :cond_1d
    const/4 v6, 0x0

    :goto_8
    if-ge v6, v0, :cond_24

    .line 462
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->readShort()S

    move-result v7

    .line 465
    iget v10, v1, Lcom/taobao/android/dinamicx/template/loader/DXBinaryLoader;->minorVersion:I

    const-wide/16 v17, 0x0

    const/4 v14, 0x1

    if-lt v10, v14, :cond_1e

    .line 466
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->readLong()J

    move-result-wide v19

    move-object v10, v15

    goto :goto_9

    :cond_1e
    move-object v10, v15

    move-wide/from16 v19, v17

    .line 468
    :goto_9
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->readLong()J

    move-result-wide v14

    cmp-long v21, v19, v17

    if-nez v21, :cond_1f

    move-object/from16 v17, v5

    move/from16 v18, v6

    move-wide/from16 v19, v14

    goto :goto_a

    :cond_1f
    move-object/from16 v17, v5

    move/from16 v18, v6

    .line 474
    :goto_a
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->readLong()J

    move-result-wide v5

    if-eqz v13, :cond_22

    move/from16 v21, v0

    .line 476
    iget-object v0, v1, Lcom/taobao/android/dinamicx/template/loader/DXBinaryLoader;->exprCodeLoader:Lcom/taobao/android/dinamicx/template/loader/binary/DXExprCodeLoader;

    invoke-virtual {v0, v5, v6}, Lcom/taobao/android/dinamicx/template/loader/binary/DXExprCodeLoader;->get(J)Lcom/taobao/android/dinamicx/expression/DXExprNode;

    move-result-object v0

    if-nez v0, :cond_20

    .line 478
    invoke-virtual/range {p2 .. p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    new-instance v2, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    const v7, 0x11186

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " \u521b\u5efa\u539f\u578b\u6811expr\u5931\u8d25 value"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v3, v7, v5}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    return-object v2

    .line 485
    :cond_20
    invoke-virtual {v0, v7}, Lcom/taobao/android/dinamicx/expression/DXExprNode;->setDataType(S)V

    .line 487
    invoke-virtual {v13}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDataParsersExprNode()Landroid/support/v4/util/LongSparseArray;

    move-result-object v5

    invoke-virtual {v5, v14, v15, v0}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    and-int/lit16 v0, v7, 0x200

    const/16 v5, 0x200

    if-ne v0, v5, :cond_23

    .line 489
    iget-object v0, v1, Lcom/taobao/android/dinamicx/template/loader/DXBinaryLoader;->enumLoader:Lcom/taobao/android/dinamicx/template/loader/binary/DXEnumLoader;

    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/template/loader/binary/DXEnumLoader;->getEnumMap()Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v0, v1, Lcom/taobao/android/dinamicx/template/loader/DXBinaryLoader;->enumLoader:Lcom/taobao/android/dinamicx/template/loader/binary/DXEnumLoader;

    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/template/loader/binary/DXEnumLoader;->getEnumMap()Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    move-result-object v0

    move-wide/from16 v6, v19

    invoke-virtual {v0, v6, v7}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 490
    invoke-virtual {v13}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getEnumMap()Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    move-result-object v0

    if-nez v0, :cond_21

    .line 491
    invoke-virtual {v13}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->newEnumMap()V

    .line 494
    :cond_21
    invoke-virtual {v13}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getEnumMap()Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    move-result-object v0

    iget-object v5, v1, Lcom/taobao/android/dinamicx/template/loader/DXBinaryLoader;->enumLoader:Lcom/taobao/android/dinamicx/template/loader/binary/DXEnumLoader;

    invoke-virtual {v5}, Lcom/taobao/android/dinamicx/template/loader/binary/DXEnumLoader;->getEnumMap()Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v14, v15, v5}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_b

    :cond_22
    move/from16 v21, v0

    :cond_23
    :goto_b
    add-int/lit8 v6, v18, 0x1

    move-object v15, v10

    move-object/from16 v5, v17

    move/from16 v0, v21

    goto/16 :goto_8

    :cond_24
    move-object/from16 v17, v5

    move-object v10, v15

    .line 501
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->readByte()B

    move-result v0

    if-lez v0, :cond_25

    if-eqz v13, :cond_25

    .line 502
    invoke-virtual {v13}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getEventHandlersExprNode()Landroid/support/v4/util/LongSparseArray;

    move-result-object v5

    if-nez v5, :cond_25

    .line 503
    invoke-virtual {v13, v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->newEventHandlersExprNode(I)V

    :cond_25
    const/4 v5, 0x0

    :goto_c
    if-ge v5, v0, :cond_28

    .line 506
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->readLong()J

    move-result-wide v6

    .line 507
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->readLong()J

    move-result-wide v14

    if-eqz v13, :cond_27

    move/from16 v16, v0

    .line 509
    iget-object v0, v1, Lcom/taobao/android/dinamicx/template/loader/DXBinaryLoader;->exprCodeLoader:Lcom/taobao/android/dinamicx/template/loader/binary/DXExprCodeLoader;

    invoke-virtual {v0, v14, v15}, Lcom/taobao/android/dinamicx/template/loader/binary/DXExprCodeLoader;->get(J)Lcom/taobao/android/dinamicx/expression/DXExprNode;

    move-result-object v0

    if-nez v0, :cond_26

    .line 511
    invoke-virtual/range {p2 .. p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    new-instance v2, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    const v5, 0x11187

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " \u521b\u5efa\u539f\u578b\u6811event\u5931\u8d25 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v6, v17

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v4, v3, v5, v6}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    return-object v2

    :cond_26
    move-object/from16 v14, v17

    .line 518
    invoke-virtual {v13}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getEventHandlersExprNode()Landroid/support/v4/util/LongSparseArray;

    move-result-object v15

    invoke-virtual {v15, v6, v7, v0}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_d

    :cond_27
    move/from16 v16, v0

    move-object/from16 v14, v17

    :goto_d
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v17, v14

    move/from16 v0, v16

    goto :goto_c

    :cond_28
    move-object v7, v13

    :goto_e
    if-eqz v8, :cond_2d

    const/4 v2, 0x1

    if-ne v2, v8, :cond_29

    move-object v5, v7

    goto :goto_f

    :cond_29
    const/4 v5, 0x0

    .line 553
    :goto_f
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->getPos()I

    move-result v0

    iget-object v2, v1, Lcom/taobao/android/dinamicx/template/loader/DXBinaryLoader;->uiCodeLoader:Lcom/taobao/android/dinamicx/template/loader/binary/DXUiCodeLoader;

    invoke-virtual {v2}, Lcom/taobao/android/dinamicx/template/loader/binary/DXUiCodeLoader;->getEndPos()I

    move-result v2

    if-eq v0, v2, :cond_2a

    const/4 v2, 0x2

    const/4 v8, 0x2

    goto :goto_10

    :cond_2a
    const/4 v2, 0x2

    :goto_10
    if-ne v8, v2, :cond_2b

    .line 558
    invoke-virtual/range {p2 .. p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    new-instance v2, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    const v5, 0x1117f

    invoke-direct {v2, v4, v3, v5}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    const/4 v5, 0x0

    :cond_2b
    if-eqz v5, :cond_2c

    .line 577
    invoke-virtual {v5}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 578
    invoke-virtual {v5}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->setWidgetNode(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)V

    .line 579
    iget v0, v1, Lcom/taobao/android/dinamicx/template/loader/DXBinaryLoader;->autoId:I

    invoke-virtual {v5, v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setLastAutoId(I)V

    :cond_2c
    return-object v5

    .line 545
    :cond_2d
    :try_start_a
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->readByte()B

    move-result v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    const/4 v5, 0x0

    const/4 v6, 0x0

    goto/16 :goto_0

    :catch_5
    move-exception v0

    .line 565
    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 566
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 568
    :cond_2e
    invoke-virtual/range {p2 .. p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object v2

    iget-object v2, v2, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    new-instance v5, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    const v6, 0x11185

    .line 572
    invoke-static {v0}, Lcom/taobao/android/dinamicx/exception/DXExceptionUtil;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v4, v3, v6, v0}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 568
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    return-object v2
.end method

.method private loadFromBufferInternally([BLcom/taobao/android/dinamicx/DXRuntimeContext;)Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 130
    new-instance v3, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;

    invoke-direct {v3}, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;-><init>()V

    .line 134
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-direct {v4, v1, v6, v5}, Ljava/lang/String;-><init>([BII)V

    const-string v6, "ALIDX"

    .line 135
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x0

    const-string v8, "Pipeline_Stage_Load_Binary"

    const-string v9, "Pipeline"

    if-nez v6, :cond_0

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadFromBuffer failed tag is invalidate:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "BinaryLoader_TMTEST"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-virtual/range {p2 .. p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object v1

    iget-object v1, v1, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    new-instance v2, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    const v3, 0x11173

    invoke-direct {v2, v9, v8, v3}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v7

    .line 144
    :cond_0
    invoke-virtual {v3, v1}, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->setCode([B)V

    .line 145
    invoke-virtual {v3, v5}, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->seekBy(I)Z

    .line 147
    invoke-virtual {v3}, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->readByte()B

    move-result v1

    const/4 v4, 0x3

    if-eq v1, v4, :cond_1

    .line 149
    invoke-virtual/range {p2 .. p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object v1

    iget-object v1, v1, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    new-instance v2, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    const v3, 0x11172

    invoke-direct {v2, v9, v8, v3}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v7

    .line 155
    :cond_1
    invoke-virtual {v3}, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->readShort()S

    move-result v1

    iput v1, v0, Lcom/taobao/android/dinamicx/template/loader/DXBinaryLoader;->minorVersion:I

    .line 157
    invoke-virtual {v3}, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->readShort()S

    move-result v1

    .line 158
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v3}, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->getCode()[B

    move-result-object v5

    invoke-virtual {v3}, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->getPos()I

    move-result v6

    invoke-direct {v4, v5, v6, v1}, Ljava/lang/String;-><init>([BII)V

    .line 159
    invoke-virtual {v3, v1}, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->seekBy(I)Z

    .line 162
    invoke-virtual {v3}, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->readShort()S

    move-result v1

    .line 163
    invoke-virtual {v3, v1}, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->setVersion(I)V

    .line 165
    invoke-virtual {v3}, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->readInt()I

    move-result v1

    .line 166
    invoke-virtual {v3}, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->readInt()I

    move-result v5

    .line 168
    invoke-virtual {v3}, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->readInt()I

    move-result v6

    .line 169
    invoke-virtual {v3}, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->readInt()I

    move-result v7

    .line 171
    invoke-virtual {v3}, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->readInt()I

    move-result v10

    .line 172
    invoke-virtual {v3}, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->readInt()I

    move-result v11

    .line 174
    invoke-virtual {v3}, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->readInt()I

    move-result v12

    .line 175
    invoke-virtual {v3}, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->readInt()I

    move-result v13

    .line 177
    invoke-virtual {v3}, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->readInt()I

    move-result v14

    .line 178
    invoke-virtual {v3}, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->readInt()I

    move-result v15

    .line 180
    invoke-virtual {v3, v1}, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->seek(I)Z

    move-result v16

    if-eqz v16, :cond_9

    move/from16 p1, v1

    .line 182
    iget-object v1, v0, Lcom/taobao/android/dinamicx/template/loader/DXBinaryLoader;->uiCodeLoader:Lcom/taobao/android/dinamicx/template/loader/binary/DXUiCodeLoader;

    invoke-virtual {v1, v4, v5, v3}, Lcom/taobao/android/dinamicx/template/loader/binary/DXUiCodeLoader;->loadFromBuffer(Ljava/lang/String;ILcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;)Z

    .line 185
    invoke-virtual {v3}, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->getPos()I

    move-result v1

    const-string v4, "  read pos:"

    if-ne v1, v6, :cond_3

    .line 186
    iget-object v1, v0, Lcom/taobao/android/dinamicx/template/loader/DXBinaryLoader;->stringLoader:Lcom/taobao/android/dinamicx/template/loader/binary/DXStringLoader;

    invoke-virtual {v1, v7, v3, v2}, Lcom/taobao/android/dinamicx/template/loader/binary/DXStringLoader;->loadFromBuffer(ILcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;Lcom/taobao/android/dinamicx/DXRuntimeContext;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "string loadFromBuffer error!"

    .line 188
    invoke-static {v1}, Lcom/taobao/android/dinamicx/log/DXRemoteLog;->remoteLoge(Ljava/lang/String;)V

    :cond_2
    move/from16 v17, v15

    goto :goto_0

    .line 192
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object v1

    iget-object v1, v1, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    new-instance v5, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v15

    const-string/jumbo v15, "string pos error:"

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v3}, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->getPos()I

    move-result v15

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const v15, 0x11174

    invoke-direct {v5, v9, v8, v15, v7}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 192
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    :goto_0
    invoke-virtual {v3}, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->getPos()I

    move-result v1

    if-ne v1, v10, :cond_4

    .line 201
    iget-object v1, v0, Lcom/taobao/android/dinamicx/template/loader/DXBinaryLoader;->varStringLoader:Lcom/taobao/android/dinamicx/template/loader/binary/DXStringLoader;

    invoke-virtual {v1, v11, v3, v2}, Lcom/taobao/android/dinamicx/template/loader/binary/DXStringLoader;->loadFromBuffer(ILcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;Lcom/taobao/android/dinamicx/DXRuntimeContext;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "var string loadFromBuffer error!"

    .line 203
    invoke-static {v1}, Lcom/taobao/android/dinamicx/log/DXRemoteLog;->remoteLoge(Ljava/lang/String;)V

    goto :goto_1

    .line 206
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object v1

    iget-object v1, v1, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    new-instance v5, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    const v7, 0x11177

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "var string pos error:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v3}, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->getPos()I

    move-result v6

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v9, v8, v7, v6}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 206
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    :cond_5
    :goto_1
    invoke-virtual {v3}, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->getPos()I

    move-result v1

    if-ne v1, v12, :cond_6

    .line 215
    iget-object v1, v0, Lcom/taobao/android/dinamicx/template/loader/DXBinaryLoader;->exprCodeLoader:Lcom/taobao/android/dinamicx/template/loader/binary/DXExprCodeLoader;

    invoke-virtual {v1, v13, v3, v2}, Lcom/taobao/android/dinamicx/template/loader/binary/DXExprCodeLoader;->loadFromBuffer(ILcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;Lcom/taobao/android/dinamicx/DXRuntimeContext;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "expr loadFromBuffer error!"

    .line 217
    invoke-static {v1}, Lcom/taobao/android/dinamicx/log/DXRemoteLog;->remoteLoge(Ljava/lang/String;)V

    goto :goto_2

    .line 220
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object v1

    iget-object v1, v1, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    new-instance v5, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    const v6, 0x1117a

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "expr pos error:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {v3}, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->getPos()I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v9, v8, v6, v7}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 220
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    :cond_7
    :goto_2
    invoke-virtual {v3}, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->getPos()I

    move-result v1

    if-ne v1, v14, :cond_8

    .line 229
    iget-object v1, v0, Lcom/taobao/android/dinamicx/template/loader/DXBinaryLoader;->enumLoader:Lcom/taobao/android/dinamicx/template/loader/binary/DXEnumLoader;

    move/from16 v4, v17

    invoke-virtual {v1, v4, v3, v2}, Lcom/taobao/android/dinamicx/template/loader/binary/DXEnumLoader;->loadFromBuffer(ILcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;Lcom/taobao/android/dinamicx/DXRuntimeContext;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "enum loadFromBuffer error!"

    .line 231
    invoke-static {v1}, Lcom/taobao/android/dinamicx/log/DXRemoteLog;->remoteLoge(Ljava/lang/String;)V

    goto :goto_3

    .line 234
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enum pos error:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->getPos()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 235
    invoke-virtual/range {p2 .. p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object v2

    iget-object v2, v2, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    new-instance v4, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    const v5, 0x1117d

    invoke-direct {v4, v9, v8, v5, v1}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    move/from16 p1, v1

    .line 243
    invoke-virtual/range {p2 .. p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object v1

    iget-object v1, v1, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    new-instance v2, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    const v4, 0x1117e

    invoke-direct {v2, v9, v8, v4}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_3
    move/from16 v1, p1

    .line 250
    invoke-virtual {v3, v1}, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->seek(I)Z

    return-object v3
.end method


# virtual methods
.method public getEnumLoader()Lcom/taobao/android/dinamicx/template/loader/binary/DXEnumLoader;
    .locals 1

    .line 586
    iget-object v0, p0, Lcom/taobao/android/dinamicx/template/loader/DXBinaryLoader;->enumLoader:Lcom/taobao/android/dinamicx/template/loader/binary/DXEnumLoader;

    return-object v0
.end method

.method public getExprCodeLoader()Lcom/taobao/android/dinamicx/template/loader/binary/DXExprCodeLoader;
    .locals 1

    .line 590
    iget-object v0, p0, Lcom/taobao/android/dinamicx/template/loader/DXBinaryLoader;->exprCodeLoader:Lcom/taobao/android/dinamicx/template/loader/binary/DXExprCodeLoader;

    return-object v0
.end method

.method public getStringLoader()Lcom/taobao/android/dinamicx/template/loader/binary/DXStringLoader;
    .locals 1

    .line 594
    iget-object v0, p0, Lcom/taobao/android/dinamicx/template/loader/DXBinaryLoader;->stringLoader:Lcom/taobao/android/dinamicx/template/loader/binary/DXStringLoader;

    return-object v0
.end method

.method public getVarStringLoader()Lcom/taobao/android/dinamicx/template/loader/binary/DXStringLoader;
    .locals 1

    .line 598
    iget-object v0, p0, Lcom/taobao/android/dinamicx/template/loader/DXBinaryLoader;->varStringLoader:Lcom/taobao/android/dinamicx/template/loader/binary/DXStringLoader;

    return-object v0
.end method

.method public loadFromBuffer([BLcom/taobao/android/dinamicx/DXRuntimeContext;Landroid/content/Context;)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;
    .locals 2

    if-nez p1, :cond_0

    .line 118
    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object p1

    iget-object p1, p1, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    new-instance p2, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    const p3, 0x11171

    const-string v0, "Pipeline"

    const-string v1, "Pipeline_Stage_Load_Binary"

    invoke-direct {p2, v0, v1, p3}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    return-object p1

    .line 125
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/taobao/android/dinamicx/template/loader/DXBinaryLoader;->loadFromBufferInternally([BLcom/taobao/android/dinamicx/DXRuntimeContext;)Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;

    move-result-object p1

    .line 126
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/android/dinamicx/template/loader/DXBinaryLoader;->createWidgetTree(Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;Lcom/taobao/android/dinamicx/DXRuntimeContext;Landroid/content/Context;)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object p1

    return-object p1
.end method
