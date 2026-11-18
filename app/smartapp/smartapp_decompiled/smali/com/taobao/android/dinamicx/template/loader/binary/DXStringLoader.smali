.class public Lcom/taobao/android/dinamicx/template/loader/binary/DXStringLoader;
.super Ljava/lang/Object;
.source "DXStringLoader.java"

# interfaces
.implements Lcom/taobao/android/dinamicx/template/loader/binary/IDXStringSupport;


# static fields
.field private static final TAG:Ljava/lang/String; = "StringLoader_TMTEST"


# instance fields
.field private mIndex2String:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/android/dinamicx/model/DXLongSparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getString(J)Ljava/lang/String;
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/taobao/android/dinamicx/template/loader/binary/DXStringLoader;->mIndex2String:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/taobao/android/dinamicx/template/loader/binary/DXStringLoader;->mIndex2String:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 89
    :cond_0
    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getString null:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "StringLoader_TMTEST"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public loadFromBuffer(ILcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;Lcom/taobao/android/dinamicx/DXRuntimeContext;)Z
    .locals 12

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 52
    :cond_0
    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->getMaxSize()I

    move-result p1

    .line 53
    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->readShort()S

    move-result v1

    const-string v2, "Pipeline_Stage_Load_Binary"

    const-string v3, "Pipeline"

    const/4 v4, 0x0

    if-gez v1, :cond_1

    .line 55
    invoke-virtual {p3}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object p1

    iget-object p1, p1, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    new-instance p2, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    const p3, 0x11176

    invoke-direct {p2, v3, v2, p3}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v4

    .line 61
    :cond_1
    new-instance v5, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    invoke-direct {v5, v1}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;-><init>(I)V

    iput-object v5, p0, Lcom/taobao/android/dinamicx/template/loader/binary/DXStringLoader;->mIndex2String:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_3

    .line 63
    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->readLong()J

    move-result-wide v6

    .line 64
    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->readShort()S

    move-result v8

    .line 65
    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->getPos()I

    move-result v9

    add-int/2addr v9, v8

    if-gt v9, p1, :cond_2

    .line 67
    new-instance v9, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->getCode()[B

    move-result-object v10

    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->getPos()I

    move-result v11

    invoke-direct {v9, v10, v11, v8}, Ljava/lang/String;-><init>([BII)V

    .line 68
    iget-object v10, p0, Lcom/taobao/android/dinamicx/template/loader/binary/DXStringLoader;->mIndex2String:Lcom/taobao/android/dinamicx/model/DXLongSparseArray;

    invoke-virtual {v10, v6, v7, v9}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->put(JLjava/lang/Object;)V

    .line 69
    invoke-virtual {p2, v8}, Lcom/taobao/android/dinamicx/template/loader/binary/DXCodeReader;->seekBy(I)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 71
    :cond_2
    invoke-virtual {p3}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxError()Lcom/taobao/android/dinamicx/DXError;

    move-result-object p1

    iget-object p1, p1, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    new-instance p2, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    const p3, 0x11175

    invoke-direct {p2, v3, v2, p3}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "StringLoader_TMTEST"

    const-string/jumbo p2, "read string over"

    .line 75
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_3
    return v0
.end method
