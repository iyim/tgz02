.class public Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;
.super Ljava/lang/Object;
.source "ViewHolderProviderManager.java"


# static fields
.field public static final EMPTY_VIEW_TYPE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "ViewHolderProviderManager"

.field private static final VIEW_TYPE_STEP:I = 0x3e8


# instance fields
.field private mComponentLifecycleCallback:Lcom/alibaba/android/ultron/vfw/event/ComponentLifecycleCallback;

.field private mDowngradeSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

.field private mNativeViewHolderProvider:Lcom/alibaba/android/ultron/vfw/viewholder/NativeViewHolderProvider;

.field private mOffsetMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/alibaba/android/ultron/vfw/viewholder/IViewHolderProvider;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mViewHolderProvider2ViewTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/alibaba/android/ultron/vfw/viewholder/IViewHolderProvider;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mViewHolderProviderMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/ultron/vfw/viewholder/IViewHolderProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;->mViewHolderProviderMap:Ljava/util/HashMap;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;->mViewHolderProvider2ViewTypeMap:Ljava/util/Map;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;->mOffsetMap:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;->mDowngradeSet:Ljava/util/Set;

    .line 54
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;->mEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    .line 55
    invoke-direct {p0}, Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;->init()V

    return-void
.end method

.method private getDowngradeState(Lcom/taobao/android/ultron/common/model/IDMComponent;)Ljava/lang/Boolean;
    .locals 1

    .line 199
    invoke-interface {p1}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getExtMap()Landroid/support/v4/util/ArrayMap;

    move-result-object p1

    if-nez p1, :cond_0

    .line 201
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :cond_0
    const-string v0, "downgrade_state"

    .line 203
    invoke-virtual {p1, v0}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 204
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 205
    nop

    nop

    return-object p1

    .line 207
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method

.method private getViewHolderProviderByContainerType(Ljava/lang/String;)Lcom/alibaba/android/ultron/vfw/viewholder/IViewHolderProvider;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;->mViewHolderProviderMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/android/ultron/vfw/viewholder/IViewHolderProvider;

    return-object p1
.end method

.method private getViewHolderProviderByViewType(I)Lcom/alibaba/android/ultron/vfw/viewholder/IViewHolderProvider;
    .locals 4

    .line 252
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;->mViewHolderProvider2ViewTypeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 254
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/ultron/vfw/viewholder/IViewHolderProvider;

    .line 255
    iget-object v2, p0, Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;->mViewHolderProvider2ViewTypeMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 256
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private init()V
    .locals 2

    .line 59
    new-instance v0, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;

    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;->mEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-direct {v0, v1}, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;-><init>(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;)V

    const-string v1, "dinamicx"

    .line 60
    invoke-virtual {p0, v1, v0}, Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;->addViewHolderProvider(Ljava/lang/String;Lcom/alibaba/android/ultron/vfw/viewholder/IViewHolderProvider;)V

    .line 62
    new-instance v0, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;

    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;->mEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-direct {v0, v1}, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;-><init>(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;)V

    const-string v1, "dinamic"

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;->addViewHolderProvider(Ljava/lang/String;Lcom/alibaba/android/ultron/vfw/viewholder/IViewHolderProvider;)V

    .line 64
    new-instance v0, Lcom/alibaba/android/ultron/vfw/viewholder/NativeViewHolderProvider;

    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;->mEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-direct {v0, v1}, Lcom/alibaba/android/ultron/vfw/viewholder/NativeViewHolderProvider;-><init>(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;)V

    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;->mNativeViewHolderProvider:Lcom/alibaba/android/ultron/vfw/viewholder/NativeViewHolderProvider;

    .line 65
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;->mNativeViewHolderProvider:Lcom/alibaba/android/ultron/vfw/viewholder/NativeViewHolderProvider;

    const-string v1, "native"

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;->addViewHolderProvider(Ljava/lang/String;Lcom/alibaba/android/ultron/vfw/viewholder/IViewHolderProvider;)V

    .line 67
    new-instance v0, Lcom/alibaba/android/ultron/vfw/viewholder/WebViewHolderProvider;

    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;->mEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-direct {v0, v1}, Lcom/alibaba/android/ultron/vfw/viewholder/WebViewHolderProvider;-><init>(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;)V

    const-string v1, "weex"

    .line 68
    invoke-virtual {p0, v1, v0}, Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;->addViewHolderProvider(Ljava/lang/String;Lcom/alibaba/android/ultron/vfw/viewholder/IViewHolderProvider;)V

    const-string v1, "h5"

    .line 69
    invoke-virtual {p0, v1, v0}, Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;->addViewHolderProvider(Ljava/lang/String;Lcom/alibaba/android/ultron/vfw/viewholder/IViewHolderProvider;)V

    return-void
.end method

.method private saveViewTypeForViewHolderProvider(Lcom/alibaba/android/ultron/vfw/viewholder/IViewHolderProvider;I)V
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;->mViewHolderProvider2ViewTypeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_0

    .line 238
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 239
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 240
    iget-object p2, p0, Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;->mViewHolderProvider2ViewTypeMap:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 242
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public addViewHolderProvider(Ljava/lang/String;Lcom/alibaba/android/ultron/vfw/viewholder/IViewHolderProvider;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;->mViewHolderProviderMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;->mOffsetMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public bindData(Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;Lcom/taobao/android/ultron/common/model/IDMComponent;)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 148
    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindData: component:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "ViewHolderProviderManager"

    invoke-static {v1, v0}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->d(Ljava/lang/String;[Ljava/lang/String;)V

    .line 150
    invoke-interface {p2}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getStatus()I

    move-result v0

    if-nez v0, :cond_3

    .line 152
    iget-object p2, p1, Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;->itemView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 154
    iget-object p2, p1, Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/alibaba/android/ultron/vfw/R$id;->view_holder_origin_height:I

    invoke-virtual {p2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_2

    .line 155
    iget-object p2, p1, Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 156
    iget-object p2, p1, Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/alibaba/android/ultron/vfw/R$id;->view_holder_origin_height:I

    iget-object v1, p1, Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    .line 158
    :cond_1
    iget-object p2, p1, Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v1, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    iget-object p2, p1, Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/alibaba/android/ultron/vfw/R$id;->view_holder_origin_height:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 162
    :cond_2
    :goto_0
    iget-object p1, p1, Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput v2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void

    .line 165
    :cond_3
    iget-object v0, p1, Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 166
    iget-object v0, p1, Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/alibaba/android/ultron/vfw/R$id;->view_holder_origin_height:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 168
    iget-object v1, p1, Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_4

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 170
    iget-object v1, p1, Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 174
    :cond_4
    invoke-direct {p0, p2}, Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;->getDowngradeState(Lcom/taobao/android/ultron/common/model/IDMComponent;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 175
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;->mNativeViewHolderProvider:Lcom/alibaba/android/ultron/vfw/viewholder/NativeViewHolderProvider;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/android/ultron/vfw/viewholder/NativeViewHolderProvider;->bindData(Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;Lcom/taobao/android/ultron/common/model/IDMComponent;)V

    goto :goto_1

    .line 177
    :cond_5
    invoke-interface {p2}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getContainerType()Ljava/lang/String;

    move-result-object v0

    .line 178
    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;->mViewHolderProviderMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ultron/vfw/viewholder/IViewHolderProvider;

    if-eqz v0, :cond_6

    .line 180
    invoke-interface {v0, p1, p2}, Lcom/alibaba/android/ultron/vfw/viewholder/IViewHolderProvider;->bindData(Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;Lcom/taobao/android/ultron/common/model/IDMComponent;)V

    .line 183
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;->mComponentLifecycleCallback:Lcom/alibaba/android/ultron/vfw/event/ComponentLifecycleCallback;

    if-eqz v0, :cond_7

    .line 184
    invoke-virtual {p1}, Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;->getComponentDataMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/alibaba/android/ultron/vfw/event/ComponentLifecycleCallback;->onBindData(Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;Lcom/taobao/android/ultron/common/model/IDMComponent;Ljava/util/Map;)V

    .line 186
    :cond_7
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;->mEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/android/ultron/utils/DebugUtils;->isDebuggable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 187
    new-instance v0, Lcom/alibaba/android/ultron/inter/UltronDebugInterface$DataMapBuilder;

    invoke-direct {v0}, Lcom/alibaba/android/ultron/inter/UltronDebugInterface$DataMapBuilder;-><init>()V

    iget-object p1, p1, Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;->itemView:Landroid/view/View;

    const-string v1, "itemView"

    .line 188
    invoke-virtual {v0, v1, p1}, Lcom/alibaba/android/ultron/inter/UltronDebugInterface$DataMapBuilder;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/android/ultron/inter/UltronDebugInterface$DataMapBuilder;

    move-result-object p1

    const-string v0, "itemComponent"

    .line 189
    invoke-virtual {p1, v0, p2}, Lcom/alibaba/android/ultron/inter/UltronDebugInterface$DataMapBuilder;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/android/ultron/inter/UltronDebugInterface$DataMapBuilder;

    move-result-object p1

    .line 190
    invoke-virtual {p1}, Lcom/alibaba/android/ultron/inter/UltronDebugInterface$DataMapBuilder;->build()Ljava/util/Map;

    move-result-object p1

    .line 192
    iget-object p2, p0, Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;->mEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {p2}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getModuleName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/alibaba/android/ultron/inter/UltronDebugFetcher;->getUltronDebug(Ljava/lang/String;)Lcom/alibaba/android/ultron/inter/UltronDebugInterface;

    move-result-object p2

    const-string v0, "STATUS_CONTAINER_ITEM_BINDDATA"

    .line 193
    invoke-interface {p2, v0, p1}, Lcom/alibaba/android/ultron/inter/UltronDebugInterface;->sendStatusEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_8
    return-void
.end method

.method public createViewHolder(Landroid/view/ViewGroup;I)Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;
    .locals 8

    .line 92
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;->mEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    const-class v1, Lcom/alibaba/android/ultron/vfw/downgrade/IDowngradeSupport;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ultron/vfw/downgrade/IDowngradeSupport;

    .line 93
    invoke-direct {p0, p2}, Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;->getViewHolderProviderByViewType(I)Lcom/alibaba/android/ultron/vfw/viewholder/IViewHolderProvider;

    move-result-object v1

    .line 95
    iget-object v2, p0, Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;->mOffsetMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int v2, p2, v2

    if-eqz v1, :cond_3

    .line 97
    iget-object v3, p0, Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;->mDowngradeSet:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 99
    move-object v3, v1

    check-cast v3, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;

    invoke-virtual {v3, v2}, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;->getDinamicTemplateByViewType(I)Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 101
    invoke-static {v3}, Lcom/alibaba/android/ultron/vfw/convert/TemplateEntityConvert;->convertToDynamicTemplate(Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)Lcom/taobao/android/ultron/common/model/DynamicTemplate;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/alibaba/android/ultron/vfw/downgrade/IDowngradeSupport;->downgradeViewHolder(Landroid/view/ViewGroup;Lcom/taobao/android/ultron/common/model/DynamicTemplate;)Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;

    move-result-object p1

    return-object p1

    .line 106
    :cond_0
    invoke-interface {v1, p1, v2}, Lcom/alibaba/android/ultron/vfw/viewholder/IViewHolderProvider;->createViewHolder(Landroid/view/ViewGroup;I)Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;

    move-result-object v3

    const/4 v4, 0x1

    .line 108
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createViewHolder, viewType:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "ViewHolderProviderManager"

    invoke-static {v5, v4}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->d(Ljava/lang/String;[Ljava/lang/String;)V

    .line 110
    invoke-virtual {v3}, Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;->getDowngradeState()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 111
    iget-object v4, p0, Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;->mDowngradeSet:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v4, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_1

    .line 114
    check-cast v1, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;->getDinamicTemplateByViewType(I)Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 116
    invoke-static {p2}, Lcom/alibaba/android/ultron/vfw/convert/TemplateEntityConvert;->convertToDynamicTemplate(Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)Lcom/taobao/android/ultron/common/model/DynamicTemplate;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/alibaba/android/ultron/vfw/downgrade/IDowngradeSupport;->downgradeViewHolder(Landroid/view/ViewGroup;Lcom/taobao/android/ultron/common/model/DynamicTemplate;)Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;

    move-result-object p1

    return-object p1

    .line 120
    :cond_1
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;->mEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {p1}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/taobao/android/ultron/utils/DebugUtils;->isDebuggable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 121
    new-instance p1, Lcom/alibaba/android/ultron/inter/UltronDebugInterface$DataMapBuilder;

    invoke-direct {p1}, Lcom/alibaba/android/ultron/inter/UltronDebugInterface$DataMapBuilder;-><init>()V

    iget-object p2, v3, Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;->itemView:Landroid/view/View;

    const-string v0, "itemView"

    .line 122
    invoke-virtual {p1, v0, p2}, Lcom/alibaba/android/ultron/inter/UltronDebugInterface$DataMapBuilder;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/android/ultron/inter/UltronDebugInterface$DataMapBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/android/ultron/inter/UltronDebugInterface$DataMapBuilder;->build()Ljava/util/Map;

    move-result-object p1

    .line 124
    iget-object p2, p0, Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;->mEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {p2}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getModuleName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/alibaba/android/ultron/inter/UltronDebugFetcher;->getUltronDebug(Ljava/lang/String;)Lcom/alibaba/android/ultron/inter/UltronDebugInterface;

    move-result-object p2

    const-string v0, "STATUS_CONTAINER_ITEM_CREATE"

    .line 125
    invoke-interface {p2, v0, p1}, Lcom/alibaba/android/ultron/inter/UltronDebugInterface;->sendStatusEvent(Ljava/lang/String;Ljava/util/Map;)V

    const-string p2, "newItemView"

    .line 128
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 129
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {v3, p1}, Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;->cloneWithNewItemView(Landroid/view/View;)Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;

    move-result-object v3

    :cond_2
    return-object v3

    .line 136
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;->mEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {v0}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/android/ultron/vfw/util/ViewUtil;->createZeroHeightView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;->mComponentLifecycleCallback:Lcom/alibaba/android/ultron/vfw/event/ComponentLifecycleCallback;

    if-eqz v1, :cond_4

    const/4 v2, 0x0

    .line 138
    invoke-interface {v1, p1, p2, v2}, Lcom/alibaba/android/ultron/vfw/event/ComponentLifecycleCallback;->onCreateViewHolder(Landroid/view/ViewGroup;ILjava/util/Map;)V

    .line 140
    :cond_4
    new-instance p1, Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;

    invoke-direct {p1, v0}, Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public destroy()V
    .locals 2

    .line 268
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;->mViewHolderProviderMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    return-void

    .line 271
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/ultron/vfw/viewholder/IViewHolderProvider;

    if-nez v1, :cond_1

    goto :goto_0

    .line 275
    :cond_1
    invoke-interface {v1}, Lcom/alibaba/android/ultron/vfw/viewholder/IViewHolderProvider;->destroy()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getComponentLifecycleCallback()Lcom/alibaba/android/ultron/vfw/event/ComponentLifecycleCallback;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;->mComponentLifecycleCallback:Lcom/alibaba/android/ultron/vfw/event/ComponentLifecycleCallback;

    return-object v0
.end method

.method public getItemViewType(Lcom/taobao/android/ultron/common/model/IDMComponent;)I
    .locals 3

    const/4 v0, -0x1

    if-eqz p1, :cond_2

    .line 213
    invoke-interface {p1}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {p1}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getContainerType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 217
    :cond_0
    invoke-interface {p1}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getContainerType()Ljava/lang/String;

    move-result-object v1

    .line 218
    iget-object v2, p0, Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;->mViewHolderProviderMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/ultron/vfw/viewholder/IViewHolderProvider;

    if-nez v1, :cond_1

    return v0

    .line 224
    :cond_1
    invoke-interface {v1, p1}, Lcom/alibaba/android/ultron/vfw/viewholder/IViewHolderProvider;->getItemViewType(Lcom/taobao/android/ultron/common/model/IDMComponent;)I

    move-result p1

    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;->mOffsetMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr p1, v0

    .line 225
    invoke-direct {p0, v1, p1}, Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;->saveViewTypeForViewHolderProvider(Lcom/alibaba/android/ultron/vfw/viewholder/IViewHolderProvider;I)V

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method public registerNativeViewHolder(Ljava/lang/String;Lcom/alibaba/android/ultron/vfw/viewholder/IViewHolderCreator;)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;->mNativeViewHolderProvider:Lcom/alibaba/android/ultron/vfw/viewholder/NativeViewHolderProvider;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/android/ultron/vfw/viewholder/NativeViewHolderProvider;->register(Ljava/lang/String;Lcom/alibaba/android/ultron/vfw/viewholder/IViewHolderCreator;)V

    return-void
.end method

.method public setComponentLifecycleCallback(Lcom/alibaba/android/ultron/vfw/event/ComponentLifecycleCallback;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/viewholder/ViewHolderProviderManager;->mComponentLifecycleCallback:Lcom/alibaba/android/ultron/vfw/event/ComponentLifecycleCallback;

    return-void
.end method
