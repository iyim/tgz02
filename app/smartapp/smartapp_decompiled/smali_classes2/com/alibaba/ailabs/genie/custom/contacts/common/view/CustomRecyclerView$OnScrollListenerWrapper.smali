.class Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView$OnScrollListenerWrapper;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "CustomRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnScrollListenerWrapper"
.end annotation


# static fields
.field private static final NEW_STATE_INVALID:I = -0x1


# instance fields
.field private mNewState:I

.field private onScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

.field final synthetic this$0:Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView;


# direct methods
.method private constructor <init>(Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView$OnScrollListenerWrapper;->this$0:Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    const/4 p1, -0x1

    .line 96
    iput p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView$OnScrollListenerWrapper;->mNewState:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView;Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView$1;)V
    .locals 0

    .line 92
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView$OnScrollListenerWrapper;-><init>(Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView;)V

    return-void
.end method

.method static synthetic access$102(Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView$OnScrollListenerWrapper;Landroid/support/v7/widget/RecyclerView$OnScrollListener;)Landroid/support/v7/widget/RecyclerView$OnScrollListener;
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView$OnScrollListenerWrapper;->onScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    return-object p1
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 1

    .line 100
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 102
    iput p2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView$OnScrollListenerWrapper;->mNewState:I

    .line 103
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView$OnScrollListenerWrapper;->onScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    :cond_0
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1

    .line 110
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 112
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView$OnScrollListenerWrapper;->this$0:Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView;->access$200(Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView;)V

    .line 114
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/CustomRecyclerView$OnScrollListenerWrapper;->onScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    :cond_0
    return-void
.end method
