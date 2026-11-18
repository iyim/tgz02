.class synthetic Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogDefaultAdapter$1;
.super Ljava/lang/Object;
.source "TBDialogDefaultAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogDefaultAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$taobao$uikit$extend$component$unify$Dialog$TBMaterialDialog$ListType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 68
    invoke-static {}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;->values()[Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogDefaultAdapter$1;->$SwitchMap$com$taobao$uikit$extend$component$unify$Dialog$TBMaterialDialog$ListType:[I

    :try_start_0
    sget-object v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogDefaultAdapter$1;->$SwitchMap$com$taobao$uikit$extend$component$unify$Dialog$TBMaterialDialog$ListType:[I

    sget-object v1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;->SINGLE:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;

    invoke-virtual {v1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogDefaultAdapter$1;->$SwitchMap$com$taobao$uikit$extend$component$unify$Dialog$TBMaterialDialog$ListType:[I

    sget-object v1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;->MULTI:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;

    invoke-virtual {v1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
