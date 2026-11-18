.class public Lcom/alibaba/android/umbrella/performance/ProcessRepo;
.super Ljava/lang/Object;
.source "ProcessRepo.java"


# static fields
.field public static final INIT_SIZE:I = 0x5

.field private static instance:Lcom/alibaba/android/umbrella/performance/ProcessRepo;


# instance fields
.field private entities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/umbrella/performance/ProcessEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(I)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/android/umbrella/performance/ProcessRepo;->entities:Ljava/util/HashMap;

    return-void
.end method

.method public static getInstance()Lcom/alibaba/android/umbrella/performance/ProcessRepo;
    .locals 2

    .line 17
    sget-object v0, Lcom/alibaba/android/umbrella/performance/ProcessRepo;->instance:Lcom/alibaba/android/umbrella/performance/ProcessRepo;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/alibaba/android/umbrella/performance/ProcessRepo;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/alibaba/android/umbrella/performance/ProcessRepo;-><init>(I)V

    sput-object v0, Lcom/alibaba/android/umbrella/performance/ProcessRepo;->instance:Lcom/alibaba/android/umbrella/performance/ProcessRepo;

    .line 20
    :cond_0
    sget-object v0, Lcom/alibaba/android/umbrella/performance/ProcessRepo;->instance:Lcom/alibaba/android/umbrella/performance/ProcessRepo;

    return-object v0
.end method


# virtual methods
.method public add(Lcom/alibaba/android/umbrella/performance/ProcessEntity;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 28
    iget-object v0, p1, Lcom/alibaba/android/umbrella/performance/ProcessEntity;->bizName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/umbrella/performance/ProcessRepo;->entities:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/alibaba/android/umbrella/performance/ProcessEntity;->bizName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    iget-object v0, p0, Lcom/alibaba/android/umbrella/performance/ProcessRepo;->entities:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/umbrella/performance/ProcessRepo;->entities:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/alibaba/android/umbrella/performance/ProcessEntity;->bizName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method public getProcessEntity(Ljava/lang/String;)Lcom/alibaba/android/umbrella/performance/ProcessEntity;
    .locals 2

    .line 53
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/umbrella/performance/ProcessRepo;->entities:Ljava/util/HashMap;

    if-nez v0, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/alibaba/android/umbrella/performance/ProcessRepo;->entities:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/android/umbrella/performance/ProcessEntity;

    return-object p1

    :cond_1
    :goto_0
    return-object v1
.end method

.method public getProcessMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/umbrella/performance/ProcessEntity;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/alibaba/android/umbrella/performance/ProcessRepo;->entities:Ljava/util/HashMap;

    return-object v0
.end method

.method public isContains(Ljava/lang/String;)Z
    .locals 1

    .line 67
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/umbrella/performance/ProcessRepo;->entities:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public remove(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 47
    iget-object v0, p0, Lcom/alibaba/android/umbrella/performance/ProcessRepo;->entities:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/alibaba/android/umbrella/performance/ProcessRepo;->entities:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public remove(Lcom/alibaba/android/umbrella/performance/ProcessEntity;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 38
    iget-object v0, p1, Lcom/alibaba/android/umbrella/performance/ProcessEntity;->bizName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/umbrella/performance/ProcessRepo;->entities:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/alibaba/android/umbrella/performance/ProcessEntity;->bizName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    iget-object v0, p0, Lcom/alibaba/android/umbrella/performance/ProcessRepo;->entities:Ljava/util/HashMap;

    iget-object p1, p1, Lcom/alibaba/android/umbrella/performance/ProcessEntity;->bizName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method
