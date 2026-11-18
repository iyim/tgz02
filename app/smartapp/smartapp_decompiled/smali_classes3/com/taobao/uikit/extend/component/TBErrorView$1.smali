.class synthetic Lcom/taobao/uikit/extend/component/TBErrorView$1;
.super Ljava/lang/Object;
.source "TBErrorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/uikit/extend/component/TBErrorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$taobao$uikit$extend$component$TBErrorView$ButtonType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 250
    invoke-static {}, Lcom/taobao/uikit/extend/component/TBErrorView$ButtonType;->values()[Lcom/taobao/uikit/extend/component/TBErrorView$ButtonType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/taobao/uikit/extend/component/TBErrorView$1;->$SwitchMap$com$taobao$uikit$extend$component$TBErrorView$ButtonType:[I

    :try_start_0
    sget-object v0, Lcom/taobao/uikit/extend/component/TBErrorView$1;->$SwitchMap$com$taobao$uikit$extend$component$TBErrorView$ButtonType:[I

    sget-object v1, Lcom/taobao/uikit/extend/component/TBErrorView$ButtonType;->BUTTON_LEFT:Lcom/taobao/uikit/extend/component/TBErrorView$ButtonType;

    invoke-virtual {v1}, Lcom/taobao/uikit/extend/component/TBErrorView$ButtonType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/taobao/uikit/extend/component/TBErrorView$1;->$SwitchMap$com$taobao$uikit$extend$component$TBErrorView$ButtonType:[I

    sget-object v1, Lcom/taobao/uikit/extend/component/TBErrorView$ButtonType;->BUTTON_POSITIVE:Lcom/taobao/uikit/extend/component/TBErrorView$ButtonType;

    invoke-virtual {v1}, Lcom/taobao/uikit/extend/component/TBErrorView$ButtonType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/taobao/uikit/extend/component/TBErrorView$1;->$SwitchMap$com$taobao$uikit$extend$component$TBErrorView$ButtonType:[I

    sget-object v1, Lcom/taobao/uikit/extend/component/TBErrorView$ButtonType;->BUTTON_RIGHT:Lcom/taobao/uikit/extend/component/TBErrorView$ButtonType;

    invoke-virtual {v1}, Lcom/taobao/uikit/extend/component/TBErrorView$ButtonType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/taobao/uikit/extend/component/TBErrorView$1;->$SwitchMap$com$taobao$uikit$extend$component$TBErrorView$ButtonType:[I

    sget-object v1, Lcom/taobao/uikit/extend/component/TBErrorView$ButtonType;->BUTTON_NAGTIVE:Lcom/taobao/uikit/extend/component/TBErrorView$ButtonType;

    invoke-virtual {v1}, Lcom/taobao/uikit/extend/component/TBErrorView$ButtonType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
