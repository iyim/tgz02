.class Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$3;
.super Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;)V
    .locals 0

    .line 428
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity$3;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;

    invoke-direct {p0}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildrenLoaded(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 432
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/activity/BaseActivity;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onChildrenLoaded------"

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
