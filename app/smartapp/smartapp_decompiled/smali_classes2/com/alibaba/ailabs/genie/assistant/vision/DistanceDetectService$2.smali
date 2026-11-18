.class Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService$2;
.super Ljava/lang/Object;
.source "DistanceDetectService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService$2;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 232
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService$2;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;->access$200(Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3a98

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    const-string v0, "mShowDialogRunnable showScreenDistanceTipDialog"

    .line 233
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService$2;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;->access$300(Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService$2;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;

    const/4 v1, 0x0

    const-string v2, "TmallGenie_Multimode_Show_Distance_Toast"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;->onEventHit(Ljava/lang/String;Ljava/util/Map;)V

    .line 236
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService$2;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;

    const-string v2, "eyeshield_toast"

    invoke-virtual {v0, v2, v2, v1}, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;->onEventHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 237
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService$2;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;

    const/4 v1, 0x1

    const-string v2, "\u79bb\u5c4f\u5e55\u8fdc\u4e00\u4e9b\uff0c\u4fdd\u62a4\u597d\u773c\u775b\u54e6"

    invoke-static {v0, v2, v1}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIToast;->showPlainTextToast(Landroid/content/Context;Ljava/lang/String;I)V

    const-string v0, "DistanceDetectService"

    const-string v1, "GenieApi.playTTS : \u79bb\u5c4f\u5e55\u8fdc\u4e00\u4e9b\uff0c\u4fdd\u62a4\u597d\u773c\u775b\u54e6 "

    .line 238
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService$2;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v4, "\u79bb\u5c4f\u5e55\u8fdc\u4e00\u4e9b\uff0c\u4fdd\u62a4\u597d\u773c\u775b\u54e6"

    invoke-static/range {v2 .. v8}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->playTTS(Landroid/content/Context;ILjava/lang/String;ZILjava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;)I

    .line 240
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService$2;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;->access$202(Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;J)J

    .line 241
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService$2;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;->access$400(Lcom/alibaba/ailabs/genie/assistant/vision/DistanceDetectService;)V

    goto :goto_0

    :cond_0
    const-string v0, "already stop not show tips"

    .line 243
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "Not Now delay"

    .line 246
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
