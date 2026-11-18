.class enum Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$JSMethod;
.super Ljava/lang/Enum;
.source "MyTBLiveEmbedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400a
    name = "JSMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$JSMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$JSMethod;

.field public static final enum pause:Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$JSMethod;

.field public static final enum play:Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$JSMethod;

.field public static final enum seekTo:Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$JSMethod;

.field public static final enum setMuted:Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$JSMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 408
    new-instance v0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$JSMethod$1;

    const/4 v1, 0x0

    const-string/jumbo v2, "setMuted"

    invoke-direct {v0, v2, v1}, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$JSMethod$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$JSMethod;->setMuted:Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$JSMethod;

    .line 421
    new-instance v0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$JSMethod$2;

    const/4 v2, 0x1

    const-string v3, "play"

    invoke-direct {v0, v3, v2}, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$JSMethod$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$JSMethod;->play:Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$JSMethod;

    .line 436
    new-instance v0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$JSMethod$3;

    const/4 v3, 0x2

    const-string v4, "pause"

    invoke-direct {v0, v4, v3}, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$JSMethod$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$JSMethod;->pause:Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$JSMethod;

    .line 451
    new-instance v0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$JSMethod$4;

    const/4 v4, 0x3

    const-string/jumbo v5, "seekTo"

    invoke-direct {v0, v5, v4}, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$JSMethod$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$JSMethod;->seekTo:Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$JSMethod;

    const/4 v0, 0x4

    .line 407
    new-array v0, v0, [Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$JSMethod;

    sget-object v5, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$JSMethod;->setMuted:Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$JSMethod;

    aput-object v5, v0, v1

    sget-object v1, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$JSMethod;->play:Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$JSMethod;

    aput-object v1, v0, v2

    sget-object v1, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$JSMethod;->pause:Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$JSMethod;

    aput-object v1, v0, v3

    sget-object v1, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$JSMethod;->seekTo:Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$JSMethod;

    aput-object v1, v0, v4

    sput-object v0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$JSMethod;->$VALUES:[Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$JSMethod;

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

    .line 407
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILandroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$1;)V
    .locals 0

    .line 407
    invoke-direct {p0, p1, p2}, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$JSMethod;-><init>(Ljava/lang/String;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$JSMethod;
    .locals 1

    .line 407
    const-class v0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$JSMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$JSMethod;

    return-object p0
.end method

.method public static values()[Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$JSMethod;
    .locals 1

    .line 407
    sget-object v0, Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$JSMethod;->$VALUES:[Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$JSMethod;

    invoke-virtual {v0}, [Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$JSMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView$JSMethod;

    return-object v0
.end method


# virtual methods
.method public doSomething(Landroid/taobao/windvane/extra/embed/video/MyTBLiveEmbedView;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 0

    .line 481
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
