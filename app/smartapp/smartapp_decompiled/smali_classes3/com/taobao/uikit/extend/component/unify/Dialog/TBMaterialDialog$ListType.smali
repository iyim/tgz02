.class public final enum Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;
.super Ljava/lang/Enum;
.source "TBMaterialDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "ListType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;

.field public static final enum MULTI:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;

.field public static final enum REGULAR:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;

.field public static final enum SINGLE:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1472
    new-instance v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;

    const/4 v1, 0x0

    const-string v2, "REGULAR"

    invoke-direct {v0, v2, v1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;->REGULAR:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;

    new-instance v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;

    const/4 v2, 0x1

    const-string v3, "SINGLE"

    invoke-direct {v0, v3, v2}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;->SINGLE:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;

    new-instance v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;

    const/4 v3, 0x2

    const-string v4, "MULTI"

    invoke-direct {v0, v4, v3}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;->MULTI:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;

    const/4 v0, 0x3

    .line 1471
    new-array v0, v0, [Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;

    sget-object v4, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;->REGULAR:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;

    aput-object v4, v0, v1

    sget-object v1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;->SINGLE:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;->MULTI:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;->$VALUES:[Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1471
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getLayoutForType(Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;)I
    .locals 1

    .line 1475
    sget-object v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$2;->$SwitchMap$com$taobao$uikit$extend$component$unify$Dialog$TBMaterialDialog$ListType:[I

    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 1481
    sget p0, Lcom/taobao/uikit/extend/R$layout;->uik_md_listitem_multichoice:I

    return p0

    .line 1483
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not a valid list type"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1479
    :cond_1
    sget p0, Lcom/taobao/uikit/extend/R$layout;->uik_md_listitem_singlechoice:I

    return p0

    .line 1477
    :cond_2
    sget p0, Lcom/taobao/uikit/extend/R$layout;->uik_md_listitem:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;
    .locals 1

    .line 1471
    const-class v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;

    return-object p0
.end method

.method public static values()[Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;
    .locals 1

    .line 1471
    sget-object v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;->$VALUES:[Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;

    invoke-virtual {v0}, [Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialDialog$ListType;

    return-object v0
.end method
