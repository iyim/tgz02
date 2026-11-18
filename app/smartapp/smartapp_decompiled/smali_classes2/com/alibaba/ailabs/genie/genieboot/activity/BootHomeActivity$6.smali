.class Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$6;
.super Ljava/lang/Object;
.source "BootHomeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->processAppInfoOnLine(Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;

.field final synthetic val$appInfo:Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;)V
    .locals 0

    .line 548
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$6;->this$0:Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$6;->val$appInfo:Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 551
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$6;->val$appInfo:Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 552
    invoke-static {v0, v0, v0, v0}, Lcom/alibaba/ailabs/genie/genieboot/utils/ApkUtil;->startDownloadVideoService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 554
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->getPowerOnAnimationURL()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$6;->val$appInfo:Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->getPowerOnMD5()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$6;->val$appInfo:Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->getPowerOffAnimationURL()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$6;->val$appInfo:Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->getPowerOffMD5()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/ailabs/genie/genieboot/utils/ApkUtil;->startDownloadVideoService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$6;->val$appInfo:Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->getLoadingImg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "preloading img "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$6;->val$appInfo:Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->getLoadingImg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BootHomeActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$6;->this$0:Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$6;->val$appInfo:Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->getLoadingImg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    new-instance v1, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v1}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget-object v2, Lcom/bumptech/glide/load/DecodeFormat;->PREFER_ARGB_8888:Lcom/bumptech/glide/load/DecodeFormat;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/RequestOptions;->format(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/RequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v1

    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->DATA:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/RequestBuilder;->submit()Lcom/bumptech/glide/request/FutureTarget;

    :cond_1
    :goto_0
    return-void
.end method
