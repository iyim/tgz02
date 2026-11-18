.class Lanet/channel/strategy/dispatch/HttpDispatcher$Singleton;
.super Ljava/lang/Object;
.source "HttpDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanet/channel/strategy/dispatch/HttpDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Singleton"
.end annotation


# static fields
.field static instance:Lanet/channel/strategy/dispatch/HttpDispatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Lanet/channel/strategy/dispatch/HttpDispatcher;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lanet/channel/strategy/dispatch/HttpDispatcher;-><init>(Lanet/channel/strategy/dispatch/HttpDispatcher$1;)V

    sput-object v0, Lanet/channel/strategy/dispatch/HttpDispatcher$Singleton;->instance:Lanet/channel/strategy/dispatch/HttpDispatcher;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
