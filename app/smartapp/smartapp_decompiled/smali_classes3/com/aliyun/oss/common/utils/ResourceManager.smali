.class public Lcom/aliyun/oss/common/utils/ResourceManager;
.super Ljava/lang/Object;
.source "ResourceManager.java"


# instance fields
.field private bundle:Ljava/util/ResourceBundle;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {p1, p2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object p1

    iput-object p1, p0, Lcom/aliyun/oss/common/utils/ResourceManager;->bundle:Ljava/util/ResourceBundle;

    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/aliyun/oss/common/utils/ResourceManager;
    .locals 2

    .line 37
    new-instance v0, Lcom/aliyun/oss/common/utils/ResourceManager;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/aliyun/oss/common/utils/ResourceManager;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/util/Locale;)Lcom/aliyun/oss/common/utils/ResourceManager;
    .locals 1

    .line 41
    new-instance v0, Lcom/aliyun/oss/common/utils/ResourceManager;

    invoke-direct {v0, p0, p1}, Lcom/aliyun/oss/common/utils/ResourceManager;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0
.end method


# virtual methods
.method public varargs getFormattedString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lcom/aliyun/oss/common/utils/ResourceManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/aliyun/oss/common/utils/ResourceManager;->bundle:Ljava/util/ResourceBundle;

    invoke-virtual {v0, p1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
