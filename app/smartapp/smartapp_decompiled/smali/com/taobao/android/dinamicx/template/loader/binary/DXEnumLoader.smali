.class public Lcom/taobao/android/dinamicx/template/loader/binary/DXEnumLoader;
.super Ljava/lang/Object;
.source "DXEnumLoader.java"


# instance fields
.field private enumMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/android/dinamicx/model/DXLongSparseArray<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private varStringLoader:Lcom/taobao/android/dinamicx/template/loader/binary/DXStringLoader;


# direct methods
.method public constructor <init>(Lcom/taobao/android/dinamicx/template/loader/binary/DXStringLoader;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/taobao/android/dinamicx/template/loader/binary/DXEnumLoader;->varStringLoader:Lcom/taobao/android/dinamicx/template/loader/binary/DXStringLoader;

    return-void
.end method


# virtual methods
.method public getEnumMap()Lcom/taobao/android/dinamicx/model/DXLongSparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/taobao/android/dinamicx/model/DXLongSparseArray<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/taobao/android/dinamicx/template/loader/binary/DXEnumLoader;->enumMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    return-object v0
.end method

.method public loadFromBuffer(ILcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;Lcom/taobao/android/dinamicx/DXRuntimeContext;)Z
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    .line 26
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->getPos()I

    move-result v3

    .line 28
    invoke-virtual/range {p2 .. p2}, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->readShort()S

    move-result v4

    const-string v5, "Pipeline_Stage_Load_Binary"

    const-string v6, "Pipeline"

    const/4 v7, 0x0

    if-gez v4, :cond_1

    .line 30
    invoke-virtual/range {p3 .. p3}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object v1

    iget-object v1, v1, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    new-instance v2, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    const v3, 0x1117c

    const-string/jumbo v4, "totalSize < 0"

    invoke-direct {v2, v6, v5, v3, v4}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v7

    .line 37
    :cond_1
    new-instance v8, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    invoke-direct {v8, v4}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;-><init>(I)V

    iput-object v8, v0, Lcom/taobao/android/dinamicx/template/loader/binary/DXEnumLoader;->enumMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    const/4 v8, 0x0

    :goto_0
    const v9, 0x1117b

    if-ge v8, v4, :cond_4

    .line 39
    invoke-virtual/range {p2 .. p2}, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->readLong()J

    move-result-wide v10

    .line 40
    invoke-virtual/range {p2 .. p2}, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->readByte()B

    move-result v12

    if-gtz v12, :cond_2

    .line 42
    invoke-virtual/range {p3 .. p3}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object v1

    iget-object v1, v1, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    new-instance v2, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    const-string v3, "count <= 0"

    invoke-direct {v2, v6, v5, v9, v3}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v7

    .line 50
    :cond_2
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9, v12}, Ljava/util/HashMap;-><init>(I)V

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v12, :cond_3

    .line 52
    iget-object v14, v0, Lcom/taobao/android/dinamicx/template/loader/binary/DXEnumLoader;->varStringLoader:Lcom/taobao/android/dinamicx/template/loader/binary/DXStringLoader;

    move/from16 v16, v3

    invoke-virtual/range {p2 .. p2}, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->readLong()J

    move-result-wide v2

    invoke-virtual {v14, v2, v3}, Lcom/taobao/android/dinamicx/template/loader/binary/DXStringLoader;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->readInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v9, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v13, v13, 0x1

    move/from16 v3, v16

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    move/from16 v16, v3

    .line 54
    iget-object v2, v0, Lcom/taobao/android/dinamicx/template/loader/binary/DXEnumLoader;->enumMap:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    invoke-virtual {v2, v10, v11, v9}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    move/from16 v16, v3

    .line 57
    invoke-virtual/range {p2 .. p2}, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->getPos()I

    move-result v2

    sub-int v2, v2, v16

    if-eq v2, v1, :cond_5

    .line 59
    invoke-virtual/range {p3 .. p3}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object v1

    iget-object v1, v1, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    new-instance v2, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    const-string/jumbo v3, "reader.getPos() - startPos != length"

    invoke-direct {v2, v6, v5, v9, v3}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v15, 0x0

    goto :goto_2

    :cond_5
    const/4 v15, 0x1

    :goto_2
    return v15
.end method
