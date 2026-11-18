.class Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider$ViewTypeManager;
.super Ljava/lang/Object;
.source "DinamicXViewHolderProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewTypeManager"
.end annotation


# instance fields
.field private mEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

.field private mTemplateTag2ViewTypeMap:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mViewType2Components:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Lcom/taobao/android/ultron/common/model/IDMComponent;",
            ">;>;"
        }
    .end annotation
.end field

.field private mViewType2TemplateMap:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;",
            ">;"
        }
    .end annotation
.end field

.field private mViewTypeCount:I


# direct methods
.method public constructor <init>(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;)V
    .locals 1

    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 398
    iput v0, p0, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider$ViewTypeManager;->mViewTypeCount:I

    .line 403
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider$ViewTypeManager;->mTemplateTag2ViewTypeMap:Landroid/support/v4/util/ArrayMap;

    .line 408
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider$ViewTypeManager;->mViewType2TemplateMap:Landroid/support/v4/util/ArrayMap;

    .line 410
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider$ViewTypeManager;->mViewType2Components:Landroid/support/v4/util/ArrayMap;

    .line 392
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider$ViewTypeManager;->mEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    return-void
.end method


# virtual methods
.method public getComponentsByViewType(I)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/taobao/android/ultron/common/model/IDMComponent;",
            ">;"
        }
    .end annotation

    .line 462
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider$ViewTypeManager;->mViewType2Components:Landroid/support/v4/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    return-object p1
.end method

.method public getDinamicTemplateByViewType(I)Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider$ViewTypeManager;->mViewType2TemplateMap:Landroid/support/v4/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    return-object p1
.end method

.method public getItemViewType(Lcom/taobao/android/ultron/common/model/IDMComponent;)I
    .locals 5

    const/4 v0, -0x1

    if-eqz p1, :cond_3

    .line 413
    invoke-interface {p1}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getContainerInfo()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 414
    invoke-interface {p1}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getContainerInfo()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 416
    iget-object v2, p0, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider$ViewTypeManager;->mEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    const-class v3, Lcom/alibaba/android/ultron/vfw/template/TemplateProviderManager;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/ultron/vfw/template/TemplateProviderManager;

    .line 417
    invoke-interface {p1}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getContainerType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/ultron/vfw/template/TemplateProviderManager;->getTemplateProvider(Ljava/lang/String;)Lcom/alibaba/android/ultron/vfw/template/ITemplateProvider;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/ultron/vfw/template/DinamicXTemplateProvider;

    .line 419
    invoke-virtual {v2, v1}, Lcom/alibaba/android/ultron/vfw/template/DinamicXTemplateProvider;->getDinamicTemplate(Ljava/lang/String;)Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    .line 425
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    .line 428
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider$ViewTypeManager;->mEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {v3}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->getAdapter()Lcom/alibaba/android/ultron/vfw/adapter/RecyclerViewAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/ultron/vfw/adapter/RecyclerViewAdapter;->getData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    :catch_0
    iget-object v3, v1, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->version:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 433
    iget-object v3, p0, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider$ViewTypeManager;->mEngine:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-virtual {v3}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->isNotContainerReuse()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 434
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 438
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider$ViewTypeManager;->mTemplateTag2ViewTypeMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_2

    .line 440
    iget v2, p0, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider$ViewTypeManager;->mViewTypeCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider$ViewTypeManager;->mViewTypeCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 441
    iget-object v3, p0, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider$ViewTypeManager;->mTemplateTag2ViewTypeMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider$ViewTypeManager;->mViewType2TemplateMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 444
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider$ViewTypeManager;->mViewType2Components:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {p1, v2, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 447
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider$ViewTypeManager;->mViewType2Components:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 448
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_3
    return v0
.end method
