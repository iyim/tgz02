.class Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment$2;
.super Ljava/lang/Object;
.source "ViewPageFragment.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/musicplayer/adapter/ExtendAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->initExtendView(Lcom/alibaba/ailabs/genie/musicplayer/databinding/MusicExtendFragmentBinding;Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;

.field final synthetic val$contentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;)V
    .locals 0

    .line 434
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment$2;->val$contentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;II)V
    .locals 1

    .line 437
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;

    invoke-static {v0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->access$200(Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;II)V

    .line 438
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->access$300(Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 439
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment$2;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;->access$300(Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    :cond_0
    return-void
.end method

.method public onPlayAllClick(I)V
    .locals 7

    .line 445
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 454
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment$2;->val$contentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getSameAlbumList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 448
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment$2;->val$contentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getMoreEditionList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 451
    :cond_2
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment$2;->val$contentPlay:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;->getSimilarRecList()Ljava/util/List;

    move-result-object v0

    :goto_0
    const-string p1, "ViewPageFragment"

    if-eqz v0, :cond_4

    .line 457
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 458
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 459
    new-instance v2, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 460
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "type"

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;

    .line 461
    new-instance v5, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v5}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 462
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;->getItemId()Ljava/lang/String;

    move-result-object v4

    const-string v6, "itemId"

    invoke-virtual {v5, v6, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$SameAlbumListBean;->getSource()Ljava/lang/String;

    move-result-object v3

    const-string v4, "source"

    invoke-virtual {v5, v4, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 467
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const-string v3, "finishActionType"

    const-string v5, "tpp"

    .line 468
    invoke-virtual {v0, v3, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "finishActionValue"

    const-string v5, "8907"

    .line 469
    invoke-virtual {v0, v3, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "playMode"

    const-string v5, "Normal"

    .line 470
    invoke-virtual {v0, v3, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "extendInfo"

    .line 472
    invoke-virtual {v1, v3, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "raw"

    .line 473
    invoke-virtual {v1, v4, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pos"

    const-string v3, "0"

    .line 474
    invoke-virtual {v1, v0, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "rawList"

    .line 475
    invoke-virtual {v1, v0, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/CreateListRequest;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/musicplayer/apis/CreateListRequest;-><init>()V

    const-string v2, "play All click request"

    .line 477
    invoke-static {p1, v2}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment$2$1;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment$2$1;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/fragments/ViewPageFragment$2;)V

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/ailabs/genie/musicplayer/apis/CreateListRequest;->createListNew(Ljava/lang/String;Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)V

    goto :goto_2

    :cond_4
    const-string v0, "play All click request list is empty"

    .line 492
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method
