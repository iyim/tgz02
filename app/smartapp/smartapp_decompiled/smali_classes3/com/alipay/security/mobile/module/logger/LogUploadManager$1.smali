.class Lcom/alipay/security/mobile/module/logger/LogUploadManager$1;
.super Ljava/lang/Object;
.source "LogUploadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/security/mobile/module/logger/LogUploadManager;->uploadLog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/security/mobile/module/logger/LogUploadManager;


# direct methods
.method constructor <init>(Lcom/alipay/security/mobile/module/logger/LogUploadManager;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/alipay/security/mobile/module/logger/LogUploadManager$1;->this$0:Lcom/alipay/security/mobile/module/logger/LogUploadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/alipay/security/mobile/module/logger/LogUploadManager$1;->this$0:Lcom/alipay/security/mobile/module/logger/LogUploadManager;

    invoke-static {v0}, Lcom/alipay/security/mobile/module/logger/LogUploadManager;->access$000(Lcom/alipay/security/mobile/module/logger/LogUploadManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 38
    invoke-static {v0}, Lcom/alipay/security/mobile/module/logger/Logger;->logException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
