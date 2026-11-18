.class Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity$2;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "VoicePrintListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity$2;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    .line 85
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .line 90
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 92
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity$2;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;->access$000(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 96
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity$2;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;->access$000(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 97
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity$2;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;->access$000(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollOffset()I

    .line 98
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity$2;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;->access$000(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result p2

    .line 99
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity$2;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;->access$000(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollExtent()I

    move-result p1

    goto :goto_0

    .line 100
    :cond_0
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity$2;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;->access$000(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 101
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity$2;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;->access$000(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollOffset()I

    .line 102
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity$2;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;->access$000(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result p2

    .line 103
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity$2;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;->access$000(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintListActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->computeHorizontalScrollExtent()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    sub-int/2addr p2, p1

    :cond_2
    return-void
.end method
