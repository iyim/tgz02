.class Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEWebViewActivity$1;
.super Landroid/webkit/WebChromeClient;
.source "TMEWebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEWebViewActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEWebViewActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEWebViewActivity;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEWebViewActivity$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEWebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0

    const/16 p1, 0x64

    if-ne p2, p1, :cond_0

    .line 71
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEWebViewActivity$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEWebViewActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEWebViewActivity;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEWebViewActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 73
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEWebViewActivity$1;->this$0:Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEWebViewActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEWebViewActivity;->access$000(Lcom/alibaba/ailabs/genie/musicplayer/tme/TMEWebViewActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_0
    return-void
.end method
