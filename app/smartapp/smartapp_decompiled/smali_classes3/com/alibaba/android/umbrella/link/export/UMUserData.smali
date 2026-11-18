.class public final Lcom/alibaba/android/umbrella/link/export/UMUserData;
.super Ljava/lang/Object;
.source "UMUserData.java"


# static fields
.field private static final KEY_MSG:Ljava/lang/String; = "msg"


# instance fields
.field private msg:Ljava/lang/String;

.field private final userArgs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 21
    iput-object v0, p0, Lcom/alibaba/android/umbrella/link/export/UMUserData;->msg:Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/umbrella/link/export/UMUserData;->userArgs:Ljava/util/Map;

    return-void
.end method

.method public static fromArg(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/android/umbrella/link/export/UMUserData;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 34
    new-instance v0, Lcom/alibaba/android/umbrella/link/export/UMUserData;

    invoke-direct {v0}, Lcom/alibaba/android/umbrella/link/export/UMUserData;-><init>()V

    .line 35
    invoke-static {p0}, Lcom/alibaba/android/umbrella/link/UMStringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    iget-object v1, v0, Lcom/alibaba/android/umbrella/link/export/UMUserData;->userArgs:Ljava/util/Map;

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static fromMap(Ljava/util/Map;)Lcom/alibaba/android/umbrella/link/export/UMUserData;
    .locals 2
    .param p0    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lcom/alibaba/android/umbrella/link/export/UMUserData;"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/alibaba/android/umbrella/link/export/UMUserData;

    invoke-direct {v0}, Lcom/alibaba/android/umbrella/link/export/UMUserData;-><init>()V

    if-eqz p0, :cond_1

    .line 44
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    iget-object v1, v0, Lcom/alibaba/android/umbrella/link/export/UMUserData;->userArgs:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static fromMsg(Ljava/lang/String;)Lcom/alibaba/android/umbrella/link/export/UMUserData;
    .locals 1

    .line 28
    new-instance v0, Lcom/alibaba/android/umbrella/link/export/UMUserData;

    invoke-direct {v0}, Lcom/alibaba/android/umbrella/link/export/UMUserData;-><init>()V

    .line 29
    iput-object p0, v0, Lcom/alibaba/android/umbrella/link/export/UMUserData;->msg:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public putArg(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/android/umbrella/link/export/UMUserData;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 52
    invoke-static {p1}, Lcom/alibaba/android/umbrella/link/UMStringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/umbrella/link/export/UMUserData;->userArgs:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-object p0
.end method

.method public toUserData()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/alibaba/android/umbrella/link/export/UMUserData;->msg:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/android/umbrella/link/UMStringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/alibaba/android/umbrella/link/export/UMUserData;->userArgs:Ljava/util/Map;

    iget-object v1, p0, Lcom/alibaba/android/umbrella/link/export/UMUserData;->msg:Ljava/lang/String;

    const-string v2, "msg"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/umbrella/link/export/UMUserData;->userArgs:Ljava/util/Map;

    return-object v0
.end method
