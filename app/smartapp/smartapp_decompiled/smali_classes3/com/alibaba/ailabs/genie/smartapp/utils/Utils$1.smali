.class final Lcom/alibaba/ailabs/genie/smartapp/utils/Utils$1;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/smartapp/utils/Utils;->reportVersion()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$versionMap:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/smartapp/utils/Utils$1;->val$versionMap:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/smartapp/utils/Utils$1;->val$versionMap:Ljava/util/Map;

    const-string v1, "smartapp_versionName"

    invoke-static {}, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->getApplication()Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/smartapp/utils/Utils;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/smartapp/utils/Utils$1;->val$versionMap:Ljava/util/Map;

    const-string v1, "smartapp_versionCode"

    invoke-static {}, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->getApplication()Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/smartapp/utils/Utils;->getVersionCode(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "smartappBundleVersions"

    const-string v1, "bundleVersions"

    .line 28
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/smartapp/utils/Utils$1;->val$versionMap:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->controlHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
