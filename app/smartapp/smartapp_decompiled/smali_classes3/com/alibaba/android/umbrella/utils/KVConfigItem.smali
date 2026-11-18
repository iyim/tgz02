.class public Lcom/alibaba/android/umbrella/utils/KVConfigItem;
.super Ljava/lang/Object;
.source "KVConfigItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final converter:Lcom/alibaba/android/umbrella/utils/IConfigItemConverter;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/android/umbrella/utils/IConfigItemConverter<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final groupName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final initRawValue:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final key:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private remoteRawValue:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private value:Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/umbrella/utils/IConfigItemConverter;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/alibaba/android/umbrella/utils/IConfigItemConverter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/umbrella/utils/IConfigItemConverter<",
            "TT;>;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/alibaba/android/umbrella/utils/KVConfigItem;->remoteRawValue:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/alibaba/android/umbrella/utils/KVConfigItem;->value:Ljava/lang/Object;

    .line 37
    iput-object p1, p0, Lcom/alibaba/android/umbrella/utils/KVConfigItem;->groupName:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/alibaba/android/umbrella/utils/KVConfigItem;->key:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/alibaba/android/umbrella/utils/KVConfigItem;->initRawValue:Ljava/lang/String;

    .line 40
    iput-object p4, p0, Lcom/alibaba/android/umbrella/utils/KVConfigItem;->converter:Lcom/alibaba/android/umbrella/utils/IConfigItemConverter;

    .line 42
    invoke-virtual {p0}, Lcom/alibaba/android/umbrella/utils/KVConfigItem;->refreshValue()V

    return-void
.end method

.method private performSetRawValue(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 63
    invoke-static {}, Lcom/taobao/orange/OrangeConfig;->getInstance()Lcom/taobao/orange/OrangeConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/umbrella/utils/KVConfigItem;->groupName:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/umbrella/utils/KVConfigItem;->key:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/taobao/orange/OrangeConfig;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/android/umbrella/utils/KVConfigItem;->remoteRawValue:Ljava/lang/String;

    const/4 p1, 0x0

    .line 64
    iput-object p1, p0, Lcom/alibaba/android/umbrella/utils/KVConfigItem;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/Object;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/alibaba/android/umbrella/utils/KVConfigItem;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    return-object v0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/umbrella/utils/KVConfigItem;->converter:Lcom/alibaba/android/umbrella/utils/IConfigItemConverter;

    iget-object v1, p0, Lcom/alibaba/android/umbrella/utils/KVConfigItem;->remoteRawValue:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alibaba/android/umbrella/utils/IConfigItemConverter;->convert(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/umbrella/utils/KVConfigItem;->value:Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lcom/alibaba/android/umbrella/utils/KVConfigItem;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public refreshValue()V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/alibaba/android/umbrella/utils/KVConfigItem;->initRawValue:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alibaba/android/umbrella/utils/KVConfigItem;->performSetRawValue(Ljava/lang/String;)V

    return-void
.end method

.method public refreshWithDefaultValue(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 58
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/alibaba/android/umbrella/utils/KVConfigItem;->initRawValue:Ljava/lang/String;

    .line 59
    :cond_0
    invoke-direct {p0, p1}, Lcom/alibaba/android/umbrella/utils/KVConfigItem;->performSetRawValue(Ljava/lang/String;)V

    return-void
.end method
