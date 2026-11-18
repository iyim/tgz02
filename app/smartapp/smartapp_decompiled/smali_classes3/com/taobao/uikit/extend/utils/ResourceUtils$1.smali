.class synthetic Lcom/taobao/uikit/extend/utils/ResourceUtils$1;
.super Ljava/lang/Object;
.source "ResourceUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/uikit/extend/utils/ResourceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$taobao$uikit$extend$component$unify$Dialog$GravityEnum:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 140
    invoke-static {}, Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;->values()[Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/taobao/uikit/extend/utils/ResourceUtils$1;->$SwitchMap$com$taobao$uikit$extend$component$unify$Dialog$GravityEnum:[I

    :try_start_0
    sget-object v0, Lcom/taobao/uikit/extend/utils/ResourceUtils$1;->$SwitchMap$com$taobao$uikit$extend$component$unify$Dialog$GravityEnum:[I

    sget-object v1, Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;->CENTER:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    invoke-virtual {v1}, Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/taobao/uikit/extend/utils/ResourceUtils$1;->$SwitchMap$com$taobao$uikit$extend$component$unify$Dialog$GravityEnum:[I

    sget-object v1, Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;->END:Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;

    invoke-virtual {v1}, Lcom/taobao/uikit/extend/component/unify/Dialog/GravityEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
