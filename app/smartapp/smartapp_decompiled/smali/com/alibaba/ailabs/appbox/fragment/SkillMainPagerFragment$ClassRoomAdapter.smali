.class Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$ClassRoomAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SkillMainPagerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClassRoomAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$ClassRoomAdapter$ClassroomSubItemViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;


# direct methods
.method private constructor <init>(Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;)V
    .locals 0

    .line 558
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$ClassRoomAdapter;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$1;)V
    .locals 0

    .line 558
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$ClassRoomAdapter;-><init>(Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 589
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$ClassRoomAdapter;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;->data:Lcom/alibaba/ailabs/appbox/bean/skill/SkillMainPage;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/skill/SkillMainPage;->getSkillClassroom()Lcom/alibaba/ailabs/appbox/bean/skill/SkillClassroom;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/skill/SkillClassroom;->getContent()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 4
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 569
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$ClassRoomAdapter;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;->access$100(Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    if-nez v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$ClassRoomAdapter;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;

    new-instance v1, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v1}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    new-instance v2, Lcom/alibaba/ailabs/appbox/utils/GlideRoundTransform;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lcom/alibaba/ailabs/appbox/utils/GlideRoundTransform;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/RequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;->access$102(Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/request/RequestOptions;

    .line 572
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$ClassRoomAdapter;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;

    iget-object v1, v1, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;->data:Lcom/alibaba/ailabs/appbox/bean/skill/SkillMainPage;

    .line 573
    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/skill/SkillMainPage;->getSkillClassroom()Lcom/alibaba/ailabs/appbox/bean/skill/SkillClassroom;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/skill/SkillClassroom;->getContent()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/appbox/bean/skill/SkillItem;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/skill/SkillItem;->getImage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    check-cast p1, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$ClassRoomAdapter$ClassroomSubItemViewHolder;

    iget-object v1, p1, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$ClassRoomAdapter$ClassroomSubItemViewHolder;->iv_classroom_subitem_bg:Landroid/widget/ImageView;

    .line 575
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 576
    iget-object v0, p1, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$ClassRoomAdapter$ClassroomSubItemViewHolder;->tv_classroom_subitem_title:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 577
    iget-object p1, p1, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$ClassRoomAdapter$ClassroomSubItemViewHolder;->rl_item_applist:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$ClassRoomAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$ClassRoomAdapter$1;-><init>(Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$ClassRoomAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 562
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object p1

    sget p2, Lcom/alibaba/ailabs/appbox/R$layout;->item_skill_main_classroom_subitem_one:I

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 563
    new-instance p2, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$ClassRoomAdapter$ClassroomSubItemViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$ClassRoomAdapter$ClassroomSubItemViewHolder;-><init>(Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$ClassRoomAdapter;Landroid/view/View;)V

    return-object p2
.end method
