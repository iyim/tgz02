.class public Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;
.super Ljava/lang/Object;
.source "TempRenderInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/ultron/engine/template/TempRenderInfo$TemplateRenderError;
    }
.end annotation


# static fields
.field public static final ERROR_NO_TEMPLATE_MATCH:I = 0x186a4

.field public static final ERROR_PRE_REDNER_FAILED:I = 0x186a1

.field public static final ERROR_PROTOCOL_REDNER_FAILED:I = 0x186a3

.field public static final ERROR_REDNER_USER_DATA_FAILED:I = 0x186a2

.field public static final ERROR_TEMPLATE_INIT_FAILED:I = 0x186a5

.field public static final ERROR_TEMPLATE_VALID:I = 0x186a0


# instance fields
.field public hasError:Z

.field public renderResult:Lcom/alibaba/fastjson/JSONObject;

.field public templateRenderError:Lcom/alibaba/android/ultron/engine/template/TempRenderInfo$TemplateRenderError;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static createErrorInfo(ILjava/lang/Exception;)Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;
    .locals 4

    .line 26
    new-instance v0, Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;

    invoke-direct {v0}, Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;-><init>()V

    const/4 v1, 0x1

    .line 27
    iput-boolean v1, v0, Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;->hasError:Z

    .line 28
    new-instance v1, Lcom/alibaba/android/ultron/engine/template/TempRenderInfo$TemplateRenderError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/alibaba/android/ultron/engine/template/TempRenderInfo$TemplateRenderError;-><init>(ILjava/lang/String;)V

    iput-object v1, v0, Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;->templateRenderError:Lcom/alibaba/android/ultron/engine/template/TempRenderInfo$TemplateRenderError;

    .line 29
    new-instance p0, Ljava/io/StringWriter;

    invoke-direct {p0}, Ljava/io/StringWriter;-><init>()V

    .line 30
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, p0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 31
    invoke-virtual {p1, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 32
    iget-object p1, v0, Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;->templateRenderError:Lcom/alibaba/android/ultron/engine/template/TempRenderInfo$TemplateRenderError;

    invoke-virtual {p0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/alibaba/android/ultron/engine/template/TempRenderInfo$TemplateRenderError;->extraMsg:Ljava/lang/String;

    return-object v0
.end method

.method public static createErrorInfo(ILjava/lang/String;)Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;
    .locals 2

    .line 19
    new-instance v0, Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;

    invoke-direct {v0}, Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;-><init>()V

    const/4 v1, 0x1

    .line 20
    iput-boolean v1, v0, Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;->hasError:Z

    .line 21
    new-instance v1, Lcom/alibaba/android/ultron/engine/template/TempRenderInfo$TemplateRenderError;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/ultron/engine/template/TempRenderInfo$TemplateRenderError;-><init>(ILjava/lang/String;)V

    iput-object v1, v0, Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;->templateRenderError:Lcom/alibaba/android/ultron/engine/template/TempRenderInfo$TemplateRenderError;

    return-object v0
.end method

.method public static createNoNeedRefreshRenderInfo()Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;
    .locals 4

    .line 43
    new-instance v0, Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;

    invoke-direct {v0}, Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;-><init>()V

    .line 44
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    iput-object v1, v0, Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;->renderResult:Lcom/alibaba/fastjson/JSONObject;

    .line 45
    iget-object v1, v0, Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;->renderResult:Lcom/alibaba/fastjson/JSONObject;

    const-string v2, "noNeedRefresh"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static createSuccessRenderInfo(Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;
    .locals 1

    .line 37
    new-instance v0, Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;

    invoke-direct {v0}, Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;-><init>()V

    .line 38
    iput-object p0, v0, Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;->renderResult:Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method
