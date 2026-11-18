.class public Lcom/alibaba/ailabs/appbox/view/ApplistViewHolder;
.super Ljava/lang/Object;
.source "ApplistViewHolder.java"


# instance fields
.field public iv_list_cloud_tag:Landroid/view/View;

.field public iv_square_del_app:Landroid/widget/ImageView;

.field public iv_square_icon:Landroid/widget/ImageView;

.field public iv_square_new_point:Landroid/widget/ImageView;

.field public pg_pre_loadding:Lcom/alibaba/ailabs/appbox/view/RoundedProgressBar;

.field public rl_cover_square:Landroid/widget/RelativeLayout;

.field public rl_item_applist:Landroid/widget/RelativeLayout;

.field public rootView:Landroid/view/View;

.field public tv_msg_red:Landroid/widget/TextView;

.field public tv_space:Landroid/widget/TextView;

.field public tv_square_title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/view/ApplistViewHolder;->rootView:Landroid/view/View;

    .line 26
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->iv_square_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/view/ApplistViewHolder;->iv_square_icon:Landroid/widget/ImageView;

    .line 27
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->iv_cloud_tag:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/view/ApplistViewHolder;->iv_list_cloud_tag:Landroid/view/View;

    .line 28
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->iv_square_del_app:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/view/ApplistViewHolder;->iv_square_del_app:Landroid/widget/ImageView;

    .line 29
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->iv_square_new_point:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/view/ApplistViewHolder;->iv_square_new_point:Landroid/widget/ImageView;

    .line 30
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->tv_square_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/view/ApplistViewHolder;->tv_square_title:Landroid/widget/TextView;

    .line 31
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->tv_space:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/view/ApplistViewHolder;->tv_space:Landroid/widget/TextView;

    .line 32
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->rl_item_applist:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/view/ApplistViewHolder;->rl_item_applist:Landroid/widget/RelativeLayout;

    .line 33
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->rl_cover_square:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/view/ApplistViewHolder;->rl_cover_square:Landroid/widget/RelativeLayout;

    .line 34
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->pg_pre_loadding:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/appbox/view/RoundedProgressBar;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/view/ApplistViewHolder;->pg_pre_loadding:Lcom/alibaba/ailabs/appbox/view/RoundedProgressBar;

    .line 35
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->tv_msg_red:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/view/ApplistViewHolder;->tv_msg_red:Landroid/widget/TextView;

    return-void
.end method
