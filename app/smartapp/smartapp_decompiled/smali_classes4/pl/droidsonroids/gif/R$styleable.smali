.class public final Lpl/droidsonroids/gif/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/droidsonroids/gif/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final GifTextureView:[I

.field public static final GifTextureView_gifSource:I = 0x0

.field public static final GifTextureView_isOpaque:I = 0x1

.field public static final GifView:[I

.field public static final GifView_freezesAnimation:I = 0x0

.field public static final GifView_loopCount:I = 0x1

.field public static final GifView_uik_auto_play:I = 0x2

.field public static final GifView_uik_gif_src:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    .line 23
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lpl/droidsonroids/gif/R$styleable;->GifTextureView:[I

    const/4 v0, 0x4

    .line 26
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lpl/droidsonroids/gif/R$styleable;->GifView:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f04014c
        0x7f040162
    .end array-data

    :array_1
    .array-data 4
        0x7f040149
        0x7f0401cc
        0x7f04033c
        0x7f040359
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
