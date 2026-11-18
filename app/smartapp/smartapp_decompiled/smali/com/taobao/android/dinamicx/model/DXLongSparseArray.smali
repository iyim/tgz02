.class public Lcom/taobao/android/dinamicx/model/DXLongSparseArray;
.super Landroid/support/v4/util/LongSparseArray;
.source "DXLongSparseArray.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/util/LongSparseArray<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Landroid/support/v4/util/LongSparseArray;-><init>(I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Lcom/taobao/android/dinamicx/model/DXLongSparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/android/dinamicx/model/DXLongSparseArray<",
            "TE;>;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    .line 21
    invoke-virtual {p0, p1}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->putAll(Lcom/taobao/android/dinamicx/model/DXLongSparseArray;)V

    return-void
.end method


# virtual methods
.method public putAll(Lcom/taobao/android/dinamicx/model/DXLongSparseArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/android/dinamicx/model/DXLongSparseArray<",
            "TE;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 28
    :goto_0
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 29
    invoke-virtual {p1, v0}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->keyAt(I)J

    move-result-wide v1

    invoke-virtual {p1, v0}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/taobao/android/dinamicx/model/DXLongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
