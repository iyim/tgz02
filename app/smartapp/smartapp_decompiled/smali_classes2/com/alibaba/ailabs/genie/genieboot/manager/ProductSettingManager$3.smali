.class Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager$3;
.super Ljava/lang/Object;
.source "ProductSettingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;->changeBootInfoAndJump()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;

.field final synthetic val$info:Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager$3;->this$0:Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager$3;->val$info:Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 157
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager$3;->val$info:Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->getPowerOnAnimationURL()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager$3;->val$info:Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->getPowerOnMD5()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager$3;->val$info:Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->getPowerOffAnimationURL()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager$3;->val$info:Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->getPowerOffMD5()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/ailabs/genie/genieboot/utils/ApkUtil;->startDownloadVideoService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
