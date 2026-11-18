.class public final enum Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;
.super Ljava/lang/Enum;
.source "TBRefreshHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RefreshState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

.field public static final enum NONE:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

.field public static final enum PREPARE_TO_SECOND_FLOOR:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

.field public static final enum PULL_TO_REFRESH:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

.field public static final enum REFRESHING:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

.field public static final enum RELEASE_TO_REFRESH:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

.field public static final enum SECOND_FLOOR_END:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

.field public static final enum SECOND_FLOOR_START:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 29
    new-instance v0, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;->NONE:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

    .line 30
    new-instance v0, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

    const/4 v2, 0x1

    const-string v3, "PULL_TO_REFRESH"

    invoke-direct {v0, v3, v2}, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;->PULL_TO_REFRESH:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

    .line 31
    new-instance v0, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

    const/4 v3, 0x2

    const-string v4, "RELEASE_TO_REFRESH"

    invoke-direct {v0, v4, v3}, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;->RELEASE_TO_REFRESH:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

    .line 32
    new-instance v0, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

    const/4 v4, 0x3

    const-string v5, "REFRESHING"

    invoke-direct {v0, v5, v4}, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;->REFRESHING:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

    .line 33
    new-instance v0, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

    const/4 v5, 0x4

    const-string v6, "PREPARE_TO_SECOND_FLOOR"

    invoke-direct {v0, v6, v5}, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;->PREPARE_TO_SECOND_FLOOR:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

    .line 34
    new-instance v0, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

    const/4 v6, 0x5

    const-string v7, "SECOND_FLOOR_START"

    invoke-direct {v0, v7, v6}, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;->SECOND_FLOOR_START:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

    .line 35
    new-instance v0, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

    const/4 v7, 0x6

    const-string v8, "SECOND_FLOOR_END"

    invoke-direct {v0, v8, v7}, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;->SECOND_FLOOR_END:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

    const/4 v0, 0x7

    .line 28
    new-array v0, v0, [Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

    sget-object v8, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;->NONE:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

    aput-object v8, v0, v1

    sget-object v1, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;->PULL_TO_REFRESH:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;->RELEASE_TO_REFRESH:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;->REFRESHING:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;->PREPARE_TO_SECOND_FLOOR:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;->SECOND_FLOOR_START:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;->SECOND_FLOOR_END:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

    aput-object v1, v0, v7

    sput-object v0, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;->$VALUES:[Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

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

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;
    .locals 1

    .line 28
    const-class v0, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

    return-object p0
.end method

.method public static values()[Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;
    .locals 1

    .line 28
    sget-object v0, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;->$VALUES:[Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

    invoke-virtual {v0}, [Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 40
    sget-object v0, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$1;->$SwitchMap$com$taobao$uikit$extend$component$refresh$TBRefreshHeader$RefreshState:[I

    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, ""

    return-object v0

    :pswitch_0
    const-string v0, "SECOND_FLOOR_END"

    return-object v0

    :pswitch_1
    const-string v0, "SECOND_FLOOR_START"

    return-object v0

    :pswitch_2
    const-string v0, "PREPARE_TO_SECOND_FLOOR"

    return-object v0

    :pswitch_3
    const-string v0, "REFRESHING"

    return-object v0

    :pswitch_4
    const-string v0, "RELEASE_TO_REFRESH"

    return-object v0

    :pswitch_5
    const-string v0, "PULL_TO_REFRESH"

    return-object v0

    :pswitch_6
    const-string v0, "NONE"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
