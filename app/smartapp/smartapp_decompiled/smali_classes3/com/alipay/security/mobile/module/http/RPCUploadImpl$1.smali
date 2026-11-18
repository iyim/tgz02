.class Lcom/alipay/security/mobile/module/http/RPCUploadImpl$1;
.super Ljava/lang/Object;
.source "RPCUploadImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/security/mobile/module/http/RPCUploadImpl;->updateStaticData(Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;)Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/security/mobile/module/http/RPCUploadImpl;

.field final synthetic val$data:Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;


# direct methods
.method constructor <init>(Lcom/alipay/security/mobile/module/http/RPCUploadImpl;Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/alipay/security/mobile/module/http/RPCUploadImpl$1;->this$0:Lcom/alipay/security/mobile/module/http/RPCUploadImpl;

    iput-object p2, p0, Lcom/alipay/security/mobile/module/http/RPCUploadImpl$1;->val$data:Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/alipay/security/mobile/module/http/RPCUploadImpl$1;->this$0:Lcom/alipay/security/mobile/module/http/RPCUploadImpl;

    invoke-static {v0}, Lcom/alipay/security/mobile/module/http/RPCUploadImpl;->access$100(Lcom/alipay/security/mobile/module/http/RPCUploadImpl;)Lcom/alipay/tscenter/biz/rpc/vkeydfp/DeviceDataReportService;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/security/mobile/module/http/RPCUploadImpl$1;->val$data:Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;

    invoke-interface {v0, v1}, Lcom/alipay/tscenter/biz/rpc/vkeydfp/DeviceDataReportService;->reportStaticData(Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;)Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/http/RPCUploadImpl;->access$002(Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;)Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;

    const-string v0, "Rpc success."

    .line 90
    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/Dbg;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 92
    new-instance v1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;

    invoke-direct {v1}, Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;-><init>()V

    invoke-static {v1}, Lcom/alipay/security/mobile/module/http/RPCUploadImpl;->access$002(Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;)Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;

    .line 93
    invoke-static {}, Lcom/alipay/security/mobile/module/http/RPCUploadImpl;->access$000()Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;->success:Z

    .line 94
    invoke-static {}, Lcom/alipay/security/mobile/module/http/RPCUploadImpl;->access$000()Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "static data rpc upload error, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->getStackString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;->resultCode:Ljava/lang/String;

    const-string v1, "Rpc failed."

    .line 96
    invoke-static {v1}, Lcom/alipay/security/mobile/module/commonutils/Dbg;->log(Ljava/lang/String;)V

    .line 97
    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->getStackString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/Dbg;->log(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
