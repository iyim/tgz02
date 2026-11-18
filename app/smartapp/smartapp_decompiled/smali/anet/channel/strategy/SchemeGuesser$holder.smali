.class Lanet/channel/strategy/SchemeGuesser$holder;
.super Ljava/lang/Object;
.source "SchemeGuesser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanet/channel/strategy/SchemeGuesser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "holder"
.end annotation


# static fields
.field static instance:Lanet/channel/strategy/SchemeGuesser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lanet/channel/strategy/SchemeGuesser;

    invoke-direct {v0}, Lanet/channel/strategy/SchemeGuesser;-><init>()V

    sput-object v0, Lanet/channel/strategy/SchemeGuesser$holder;->instance:Lanet/channel/strategy/SchemeGuesser;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
