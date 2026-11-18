.class Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine$1;
.super Ljava/lang/Object;
.source "CdynamicTemplateEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->triggerTemplateUpdate(Lcom/alipay/android/app/cctemplate/api/ITplTransport;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;

.field final synthetic val$transport:Lcom/alipay/android/app/cctemplate/api/ITplTransport;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;Lcom/alipay/android/app/cctemplate/api/ITplTransport;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine$1;->this$0:Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;

    iput-object p2, p0, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine$1;->val$transport:Lcom/alipay/android/app/cctemplate/api/ITplTransport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "TplTriggerOnComplatedEx"

    const-string v1, "template"

    .line 203
    :try_start_0
    iget-object v2, p0, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine$1;->this$0:Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;

    invoke-static {v2}, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->access$000(Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;)Lcom/alipay/android/app/cctemplate/transport/TemplateManager;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine$1;->val$transport:Lcom/alipay/android/app/cctemplate/api/ITplTransport;

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/cctemplate/transport/TemplateManager;->downloadFromCacheList(Lcom/alipay/android/app/cctemplate/api/ITplTransport;)Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    iget-object v2, p0, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine$1;->this$0:Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;

    invoke-static {v2}, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->access$100(Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;)Lcom/alipay/android/app/cctemplate/api/ITplProvider;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 209
    :try_start_1
    iget-object v2, p0, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine$1;->this$0:Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;

    invoke-static {v2}, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->access$100(Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;)Lcom/alipay/android/app/cctemplate/api/ITplProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/android/app/cctemplate/api/ITplProvider;->onComplated()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    .line 205
    :try_start_2
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 207
    iget-object v2, p0, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine$1;->this$0:Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;

    invoke-static {v2}, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->access$100(Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;)Lcom/alipay/android/app/cctemplate/api/ITplProvider;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 209
    :try_start_3
    iget-object v2, p0, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine$1;->this$0:Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;

    invoke-static {v2}, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->access$100(Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;)Lcom/alipay/android/app/cctemplate/api/ITplProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/android/app/cctemplate/api/ITplProvider;->onComplated()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    .line 211
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v3

    invoke-virtual {v3, v1, v0, v2}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void

    .line 207
    :goto_1
    iget-object v3, p0, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine$1;->this$0:Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;

    invoke-static {v3}, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->access$100(Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;)Lcom/alipay/android/app/cctemplate/api/ITplProvider;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 209
    :try_start_4
    iget-object v3, p0, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine$1;->this$0:Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;

    invoke-static {v3}, Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;->access$100(Lcom/alipay/android/app/cctemplate/CdynamicTemplateEngine;)Lcom/alipay/android/app/cctemplate/api/ITplProvider;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/android/app/cctemplate/api/ITplProvider;->onComplated()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v3

    .line 211
    invoke-static {}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->getInstance()Lcom/alipay/android/app/cctemplate/log/LogTracer;

    move-result-object v4

    invoke-virtual {v4, v1, v0, v3}, Lcom/alipay/android/app/cctemplate/log/LogTracer;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 214
    :cond_1
    :goto_2
    throw v2
.end method
