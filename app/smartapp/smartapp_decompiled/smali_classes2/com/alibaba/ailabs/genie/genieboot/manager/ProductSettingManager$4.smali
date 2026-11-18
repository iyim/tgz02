.class Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager$4;
.super Ljava/lang/Object;
.source "ProductSettingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;->startJumpApp(Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager$4;->this$0:Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "BootApp"

    const-string v1, "-- ending IMG show"

    .line 206
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieboot/manager/LoadingWindowManager;->getInstance()Lcom/alibaba/ailabs/genie/genieboot/manager/LoadingWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/genieboot/manager/LoadingWindowManager;->dismissLoadingView()V

    return-void
.end method
