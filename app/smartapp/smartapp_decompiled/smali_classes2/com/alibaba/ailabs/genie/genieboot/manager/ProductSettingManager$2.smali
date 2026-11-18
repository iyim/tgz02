.class Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager$2;
.super Ljava/lang/Object;
.source "ProductSettingManager.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/data/GenieDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;
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

    .line 78
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager$2;->this$0:Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate()V
    .locals 3

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "silencelistener IDeviceMirrorChange onUpdate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BootApp"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager$2;->this$0:Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;->access$100(Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/data/GenieDataManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/data/GenieDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager$2;->this$0:Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;->access$400(Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;)Lcom/alibaba/ailabs/genie/data/GenieDataListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/data/GenieDataManager;->unRegisterListener(Lcom/alibaba/ailabs/genie/data/GenieDataListener;)V

    .line 84
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager$2;->this$0:Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;->access$502(Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;Z)Z

    .line 85
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager$2;->this$0:Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;->getBootInfo(Z)Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->getLoadingImg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    new-instance v1, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager$2$1;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager$2$1;-><init>(Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager$2;Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;)V

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/utils/taskpool/GenieThreadManager;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
