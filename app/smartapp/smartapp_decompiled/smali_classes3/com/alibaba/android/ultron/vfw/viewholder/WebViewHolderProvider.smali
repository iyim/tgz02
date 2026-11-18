.class public Lcom/alibaba/android/ultron/vfw/viewholder/WebViewHolderProvider;
.super Ljava/lang/Object;
.source "WebViewHolderProvider.java"

# interfaces
.implements Lcom/alibaba/android/ultron/vfw/viewholder/IViewHolderProvider;


# static fields
.field private static final KEY_URL:Ljava/lang/String; = "url"


# instance fields
.field private mEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

.field private mUrl2ViewType:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mViewType2Url:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mViewTypeCount:I

.field private webHolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/alibaba/android/ultron/vfw/web/WebViewHolder;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/alibaba/android/ultron/vfw/viewholder/WebViewHolderProvider;->mViewTypeCount:I

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/viewholder/WebViewHolderProvider;->mUrl2ViewType:Ljava/util/HashMap;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/viewholder/WebViewHolderProvider;->mViewType2Url:Ljava/util/HashMap;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/viewholder/WebViewHolderProvider;->webHolders:Ljava/util/List;

    .line 32
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/viewholder/WebViewHolderProvider;->mEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    return-void
.end method


# virtual methods
.method public bindData(Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;Lcom/taobao/android/ultron/common/model/IDMComponent;)V
    .locals 0

    .line 67
    invoke-virtual {p1}, Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;->getInnerViewHolder()Lcom/alibaba/android/ultron/vfw/viewholder/AbsViewHolder;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 69
    invoke-virtual {p1, p2}, Lcom/alibaba/android/ultron/vfw/viewholder/AbsViewHolder;->bindData(Lcom/taobao/android/ultron/common/model/IDMComponent;)V

    :cond_0
    return-void
.end method

.method public createViewHolder(Landroid/view/ViewGroup;I)Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/viewholder/WebViewHolderProvider;->mViewType2Url:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 58
    new-instance v0, Lcom/alibaba/android/ultron/vfw/web/WebViewHolder;

    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/viewholder/WebViewHolderProvider;->mEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-direct {v0, v1, p2}, Lcom/alibaba/android/ultron/vfw/web/WebViewHolder;-><init>(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0, p1}, Lcom/alibaba/android/ultron/vfw/web/WebViewHolder;->createView(Landroid/view/ViewGroup;)Landroid/view/View;

    .line 60
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/viewholder/WebViewHolderProvider;->webHolders:Ljava/util/List;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/web/WebViewHolder;->getRootView()Landroid/view/View;

    move-result-object p1

    .line 62
    new-instance p2, Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;

    invoke-direct {p2, p1, v0}, Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;-><init>(Landroid/view/View;Lcom/alibaba/android/ultron/vfw/viewholder/AbsViewHolder;)V

    return-object p2
.end method

.method public destroy()V
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/viewholder/WebViewHolderProvider;->webHolders:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/viewholder/WebViewHolderProvider;->webHolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    .line 79
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 82
    :cond_2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/ultron/vfw/web/WebViewHolder;

    .line 83
    invoke-virtual {v1}, Lcom/alibaba/android/ultron/vfw/web/WebViewHolder;->destroy()V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public getItemViewType(Lcom/taobao/android/ultron/common/model/IDMComponent;)I
    .locals 2

    const/4 v0, -0x1

    if-eqz p1, :cond_3

    .line 37
    invoke-interface {p1}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getContainerInfo()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    invoke-interface {p1}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getContainerInfo()Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    const-string v1, "url"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 41
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/viewholder/WebViewHolderProvider;->mUrl2ViewType:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 45
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/viewholder/WebViewHolderProvider;->mUrl2ViewType:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 48
    :cond_2
    iget v0, p0, Lcom/alibaba/android/ultron/vfw/viewholder/WebViewHolderProvider;->mViewTypeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/android/ultron/vfw/viewholder/WebViewHolderProvider;->mViewTypeCount:I

    .line 49
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/viewholder/WebViewHolderProvider;->mUrl2ViewType:Ljava/util/HashMap;

    iget v1, p0, Lcom/alibaba/android/ultron/vfw/viewholder/WebViewHolderProvider;->mViewTypeCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/viewholder/WebViewHolderProvider;->mViewType2Url:Ljava/util/HashMap;

    iget v1, p0, Lcom/alibaba/android/ultron/vfw/viewholder/WebViewHolderProvider;->mViewTypeCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget p1, p0, Lcom/alibaba/android/ultron/vfw/viewholder/WebViewHolderProvider;->mViewTypeCount:I

    return p1

    :cond_3
    :goto_0
    return v0
.end method
