.class enum Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties;
.super Ljava/lang/Enum;
.source "MyTBLiveEmbedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400a
    name = "EmbedProperties"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties;

.field public static final enum autoplay:Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties;

.field public static final enum bizCode:Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties;

.field public static final enum feedId:Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties;

.field public static final enum muted:Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties;

.field public static final enum objectFit:Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties;

.field public static final enum scenarioType:Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties;

.field public static final enum src:Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties;

.field public static final enum subBizCode:Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties;

.field public static final enum usePlayerManager:Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 212
    new-instance v0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties$1;

    const/4 v1, 0x0

    const-string/jumbo v2, "src"

    invoke-direct {v0, v2, v1}, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties;->src:Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties;

    .line 221
    new-instance v0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties$2;

    const/4 v2, 0x1

    const-string v3, "muted"

    invoke-direct {v0, v3, v2}, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties;->muted:Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties;

    .line 229
    new-instance v0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties$3;

    const/4 v3, 0x2

    const-string v4, "autoplay"

    invoke-direct {v0, v4, v3}, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties;->autoplay:Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties;

    .line 237
    new-instance v0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties$4;

    const/4 v4, 0x3

    const-string/jumbo v5, "scenarioType"

    invoke-direct {v0, v5, v4}, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties;->scenarioType:Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties;

    .line 251
    new-instance v0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties$5;

    const/4 v5, 0x4

    const-string v6, "objectFit"

    invoke-direct {v0, v6, v5}, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties;->objectFit:Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties;

    .line 259
    new-instance v0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties$6;

    const/4 v6, 0x5

    const-string v7, "bizCode"

    invoke-direct {v0, v7, v6}, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties;->bizCode:Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties;

    .line 268
    new-instance v0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties$7;

    const/4 v7, 0x6

    const-string/jumbo v8, "subBizCode"

    invoke-direct {v0, v8, v7}, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties$7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties;->subBizCode:Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties;

    .line 276
    new-instance v0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties$8;

    const/4 v8, 0x7

    const-string v9, "feedId"

    invoke-direct {v0, v9, v8}, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties$8;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties;->feedId:Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties;

    .line 285
    new-instance v0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties$9;

    const/16 v9, 0x8

    const-string/jumbo v10, "usePlayerManager"

    invoke-direct {v0, v10, v9}, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties$9;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties;->usePlayerManager:Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties;

    const/16 v0, 0x9

    .line 211
    new-array v0, v0, [Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties;

    sget-object v10, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties;->src:Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties;

    aput-object v10, v0, v1

    sget-object v1, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties;->muted:Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties;

    aput-object v1, v0, v2

    sget-object v1, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties;->autoplay:Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties;

    aput-object v1, v0, v3

    sget-object v1, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties;->scenarioType:Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties;

    aput-object v1, v0, v4

    sget-object v1, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties;->objectFit:Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties;

    aput-object v1, v0, v5

    sget-object v1, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties;->bizCode:Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties;

    aput-object v1, v0, v6

    sget-object v1, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties;->subBizCode:Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties;

    aput-object v1, v0, v7

    sget-object v1, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties;->feedId:Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties;

    aput-object v1, v0, v8

    sget-object v1, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties;->usePlayerManager:Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties;

    aput-object v1, v0, v9

    sput-object v0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties;->$VALUES:[Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties;

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

    .line 211
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILandroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$1;)V
    .locals 0

    .line 211
    invoke-direct {p0, p1, p2}, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties;-><init>(Ljava/lang/String;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties;
    .locals 1

    .line 211
    const-class v0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties;

    return-object p0
.end method

.method public static values()[Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties;
    .locals 1

    .line 211
    sget-object v0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties;->$VALUES:[Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties;

    invoke-virtual {v0}, [Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$EmbedProperties;

    return-object v0
.end method


# virtual methods
.method public setValue(Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;Ljava/lang/Object;Z)Z
    .locals 0

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
