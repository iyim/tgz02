.class Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager$5;
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

.field final synthetic val$nowAppinfo:Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager$5;->this$0:Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager$5;->val$nowAppinfo:Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "BootApp"

    const-string v1, "-- delay jump"

    .line 227
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager$5;->this$0:Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager$5;->val$nowAppinfo:Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;->access$600(Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;)V

    return-void
.end method
