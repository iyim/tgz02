.class Lcom/alibaba/genie/shopping/activity/ShoppingDetailVideoActivity$3;
.super Ljava/lang/Object;
.source "ShoppingDetailVideoActivity.java"

# interfaces
.implements Lcom/alibaba/genie/shopping/view/AdVideoView$IAdVideoViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/genie/shopping/activity/ShoppingDetailVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/shopping/activity/ShoppingDetailVideoActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/shopping/activity/ShoppingDetailVideoActivity;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailVideoActivity$3;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingDetailVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdDetailsClick()V
    .locals 2

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailVideoActivity$3;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingDetailVideoActivity;

    invoke-static {v0}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailVideoActivity;->access$000(Lcom/alibaba/genie/shopping/activity/ShoppingDetailVideoActivity;)Lcom/alibaba/genie/shopping/view/AdVideoView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailVideoActivity$3;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingDetailVideoActivity;

    invoke-static {v1}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailVideoActivity;->access$100(Lcom/alibaba/genie/shopping/activity/ShoppingDetailVideoActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/genie/shopping/view/AdVideoView;->playVideo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 131
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdActivity"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailVideoActivity$3;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingDetailVideoActivity;

    invoke-virtual {v0}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailVideoActivity;->finish()V

    :goto_0
    return-void
.end method

.method public onAutoStartPlay()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onPlayPause()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onPlayVideoComplete()V
    .locals 2

    const-string v0, "AdActivity"

    const-string v1, "play ad complete..."

    .line 138
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
