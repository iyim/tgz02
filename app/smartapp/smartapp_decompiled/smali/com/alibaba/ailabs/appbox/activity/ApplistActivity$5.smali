.class Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$5;
.super Ljava/lang/Object;
.source "ApplistActivity.java"

# interfaces
.implements Lcom/alibaba/ailabs/base/util/PreinstallManager$PreinstallAndUploadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->onDataLoaded(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;)V
    .locals 0

    .line 788
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$5;->this$0:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public preinstallFailed(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0

    .line 809
    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$5;->this$0:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;

    new-instance p3, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$5$2;

    invoke-direct {p3, p0, p4, p1}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$5$2;-><init>(Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$5;ZLjava/lang/String;)V

    invoke-virtual {p2, p3}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public preinstallSuccess(Ljava/lang/String;)V
    .locals 2

    .line 797
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$5;->this$0:Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;

    new-instance v1, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$5$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$5$1;-><init>(Lcom/alibaba/ailabs/appbox/activity/ApplistActivity$5;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/appbox/activity/ApplistActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startPreinstall(Ljava/lang/String;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public startUpload(Ljava/lang/String;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public uploadFailed(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public uploadSuccess(Ljava/lang/String;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
