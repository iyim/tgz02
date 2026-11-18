.class Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter$1;
.super Ljava/lang/Object;
.source "ShoppingSearchRecyclerViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter;->onBindViewHolder(Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter;

.field final synthetic val$goodInfo:Lcom/alibaba/genie/shopping/bean/GoodInfo;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter;Lcom/alibaba/genie/shopping/bean/GoodInfo;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter$1;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter;

    iput-object p2, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter$1;->val$goodInfo:Lcom/alibaba/genie/shopping/bean/GoodInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 203
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter$1;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter;->access$100(Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter;)Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter$OnItemClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter$1;->val$goodInfo:Lcom/alibaba/genie/shopping/bean/GoodInfo;

    invoke-interface {p1, v0}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchRecyclerViewAdapter$OnItemClickListener;->onItemClick(Lcom/alibaba/genie/shopping/bean/GoodInfo;)V

    return-void
.end method
