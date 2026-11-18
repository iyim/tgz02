.class public Lcom/taobao/android/dinamic/tempate/manager/TemplateRequest;
.super Ljava/lang/Object;
.source "TemplateRequest.java"


# instance fields
.field public defaultTemplateAssetName:Ljava/lang/String;

.field public defaultTemplateId:Ljava/lang/String;

.field public templateId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 23
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    iput-object p1, p0, Lcom/taobao/android/dinamic/tempate/manager/TemplateRequest;->templateId:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/taobao/android/dinamic/tempate/manager/TemplateRequest;->defaultTemplateId:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/taobao/android/dinamic/tempate/manager/TemplateRequest;->defaultTemplateAssetName:Ljava/lang/String;

    return-void

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "defaultTemplateAssetsName is null or empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "defaultTemplateId is null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "templateId is null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
