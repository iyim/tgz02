.class Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication$4;
.super Ljava/lang/Object;
.source "SmartAppApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->initOtherDelay()V
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

    .line 282
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication$4;->this$0:Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "SmartAppApplication"

    const-string v1, "Delay start SmartappServiceManager"

    .line 285
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-static {}, Lcom/alibaba/ailabs/genie/smartapp/SmartappServiceManager;->getInstance()Lcom/alibaba/ailabs/genie/smartapp/SmartappServiceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication$4;->this$0:Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/smartapp/SmartappServiceManager;->startService(Landroid/content/Context;)V

    return-void
.end method
