.class public Lcom/taobao/android/dinamicx/view/DXNativePageIndicator$RecycledViewPool;
.super Ljava/lang/Object;
.source "DXNativePageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/dinamicx/view/DXNativePageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecycledViewPool"
.end annotation


# static fields
.field private static final DEFAULT_MAX_SCRAP:I = 0xa


# instance fields
.field private mMaxScrap:Landroid/util/SparseIntArray;

.field private mScrap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/view/DXNativePageIndicator$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    .line 191
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/view/DXNativePageIndicator$RecycledViewPool;->mMaxScrap:Landroid/util/SparseIntArray;

    return-void
.end method

.method private getScrapHeapForType(I)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/taobao/android/dinamicx/view/DXNativePageIndicator$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 243
    iget-object v1, p0, Lcom/taobao/android/dinamicx/view/DXNativePageIndicator$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 244
    iget-object v1, p0, Lcom/taobao/android/dinamicx/view/DXNativePageIndicator$RecycledViewPool;->mMaxScrap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_0

    .line 245
    iget-object v1, p0, Lcom/taobao/android/dinamicx/view/DXNativePageIndicator$RecycledViewPool;->mMaxScrap:Landroid/util/SparseIntArray;

    const/16 v2, 0xa

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/taobao/android/dinamicx/view/DXNativePageIndicator$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public getRecycledView(I)Landroid/view/View;
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/taobao/android/dinamicx/view/DXNativePageIndicator$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 211
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 213
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 214
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-object v1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public putRecycledView(ILandroid/view/View;)V
    .locals 2

    .line 232
    invoke-direct {p0, p1}, Lcom/taobao/android/dinamicx/view/DXNativePageIndicator$RecycledViewPool;->getScrapHeapForType(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 233
    iget-object v1, p0, Lcom/taobao/android/dinamicx/view/DXNativePageIndicator$RecycledViewPool;->mMaxScrap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt p1, v1, :cond_0

    return-void

    .line 236
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setMaxRecycledViews(II)V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/taobao/android/dinamicx/view/DXNativePageIndicator$RecycledViewPool;->mMaxScrap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 201
    iget-object v0, p0, Lcom/taobao/android/dinamicx/view/DXNativePageIndicator$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 203
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 204
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method size()I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 222
    :goto_0
    iget-object v2, p0, Lcom/taobao/android/dinamicx/view/DXNativePageIndicator$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 223
    iget-object v2, p0, Lcom/taobao/android/dinamicx/view/DXNativePageIndicator$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 225
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method
