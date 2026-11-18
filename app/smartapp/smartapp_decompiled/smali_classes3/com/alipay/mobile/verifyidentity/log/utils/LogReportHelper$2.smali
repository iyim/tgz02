.class Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper$2;
.super Ljava/lang/Object;
.source "LogReportHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$params:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper;Ljava/util/Map;Ljava/io/File;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper$2;->this$0:Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper;

    iput-object p2, p0, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper$2;->val$params:Ljava/util/Map;

    iput-object p3, p0, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper$2;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-class p1, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "hackbyte "

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 144
    :try_start_0
    new-instance v0, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;-><init>()V

    .line 145
    new-instance v1, Lcom/alipay/mobileic/core/model/rpc/MICReportRequest;

    invoke-direct {v1}, Lcom/alipay/mobileic/core/model/rpc/MICReportRequest;-><init>()V

    .line 146
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper$2;->val$params:Ljava/util/Map;

    iput-object v2, v1, Lcom/alipay/mobileic/core/model/rpc/MICReportRequest;->reportData:Ljava/util/Map;

    .line 147
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->report(Lcom/alipay/mobileic/core/model/rpc/MICReportRequest;)Lcom/alipay/mobileic/core/model/rpc/MICReportResponse;

    move-result-object v0

    .line 148
    iget-boolean v0, v0, Lcom/alipay/mobileic/core/model/rpc/MICReportResponse;->success:Z

    if-nez v0, :cond_0

    .line 150
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u6838\u8eab\u672c\u5730\u65e5\u5fd7\u4e0a\u62a5\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 152
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u6838\u8eab\u672c\u5730\u65e5\u5fd7\u4e0a\u62a5\u6210\u529f"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper$2;->val$file:Ljava/io/File;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/log/utils/FileCacheUtil;->delete(Ljava/io/File;)Z
    :try_end_0
    .catch Lcom/alipay/mobile/verifyidentity/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 158
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rpc got an exception: "

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 156
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/utils/LogReportHelper;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rpc got an RPC exception: "

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
