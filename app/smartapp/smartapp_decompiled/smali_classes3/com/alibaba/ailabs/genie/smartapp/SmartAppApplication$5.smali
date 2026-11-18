.class Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication$5;
.super Ljava/lang/Object;
.source "SmartAppApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;)V
    .locals 0

    .line 385
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication$5;->this$0:Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "ro.genie.uuid"

    .line 388
    invoke-static {v0}, Lcom/alibaba/analytics/utils/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 389
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 390
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication$5;->this$0:Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->access$100(Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication$5;->this$0:Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->access$300(Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 392
    :cond_0
    invoke-static {}, Lcom/uc/crashsdk/export/CrashApi;->getInstance()Lcom/uc/crashsdk/export/CrashApi;

    move-result-object v1

    const-string v2, "k_uid"

    invoke-virtual {v1, v2, v0}, Lcom/uc/crashsdk/export/CrashApi;->addHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
