.class Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity$2;
.super Ljava/lang/Object;
.source "VoicePrintGetOneActivity.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity$2;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Z)V
    .locals 2

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity$2;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity;

    new-instance v1, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity$2$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity$2$1;-><init>(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity$2;Z)V

    invoke-virtual {v0, v1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGetOneActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 133
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
