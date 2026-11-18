.class public Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;
.super Ljava/lang/Object;
.source "TemplateStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/cctemplate/storage/TemplateStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JsonWrapper"
.end annotation


# static fields
.field public static final HTML:Ljava/lang/String; = "HTML"

.field public static final JSON:Ljava/lang/String; = "JSON"


# instance fields
.field format:Ljava/lang/String;

.field html:Ljava/lang/String;

.field json:Ljava/lang/String;

.field name:Ljava/lang/String;

.field publishVersion:Ljava/lang/String;

.field size:I

.field time:Ljava/lang/String;

.field tplVersion:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/alipay/android/app/cctemplate/model/Template;)V
    .locals 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 70
    iget-object v0, p1, Lcom/alipay/android/app/cctemplate/model/Template;->format:Ljava/lang/String;

    const-string v1, "HTML"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p1, Lcom/alipay/android/app/cctemplate/model/Template;->data:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;->html:Ljava/lang/String;

    goto :goto_0

    .line 73
    :cond_0
    iget-object v0, p1, Lcom/alipay/android/app/cctemplate/model/Template;->data:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;->json:Ljava/lang/String;

    .line 75
    :goto_0
    iget-object v0, p1, Lcom/alipay/android/app/cctemplate/model/Template;->data:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;->size:I

    .line 76
    iget-object v0, p1, Lcom/alipay/android/app/cctemplate/model/Template;->format:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;->format:Ljava/lang/String;

    .line 77
    iget-object v0, p1, Lcom/alipay/android/app/cctemplate/model/Template;->publishVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;->publishVersion:Ljava/lang/String;

    .line 78
    iget-object v0, p1, Lcom/alipay/android/app/cctemplate/model/Template;->time:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;->time:Ljava/lang/String;

    .line 79
    iget-object v0, p1, Lcom/alipay/android/app/cctemplate/model/Template;->tplVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;->tplVersion:Ljava/lang/String;

    .line 80
    iget-object p1, p1, Lcom/alipay/android/app/cctemplate/model/Template;->name:Ljava/lang/String;

    iput-object p1, p0, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;->name:Ljava/lang/String;

    return-void

    .line 68
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "template is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    iput-object p1, p0, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;->json:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    mul-int/lit8 p1, p1, 0x3

    iput p1, p0, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;->size:I

    const-string p1, "JSON"

    .line 59
    iput-object p1, p0, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;->format:Ljava/lang/String;

    return-void

    .line 55
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "json is empty!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static valueOf(Lcom/alipay/android/app/cctemplate/model/Template;)Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;
    .locals 1

    .line 84
    new-instance v0, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;-><init>(Lcom/alipay/android/app/cctemplate/model/Template;)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;
    .locals 1

    .line 63
    new-instance v0, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;->publishVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;->publishVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;->tplVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;->tplVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;->time:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;->time:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 98
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;->format:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/android/app/cctemplate/storage/TemplateStorage$JsonWrapper;->format:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    return-object v1
.end method
