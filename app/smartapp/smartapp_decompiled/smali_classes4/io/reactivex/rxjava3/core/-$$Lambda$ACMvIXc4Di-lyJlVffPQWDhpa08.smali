.class public final synthetic Lio/reactivex/rxjava3/core/-$$Lambda$ACMvIXc4Di-lyJlVffPQWDhpa08;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lio/reactivex/rxjava3/core/-$$Lambda$ACMvIXc4Di-lyJlVffPQWDhpa08;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/reactivex/rxjava3/core/-$$Lambda$ACMvIXc4Di-lyJlVffPQWDhpa08;

    invoke-direct {v0}, Lio/reactivex/rxjava3/core/-$$Lambda$ACMvIXc4Di-lyJlVffPQWDhpa08;-><init>()V

    sput-object v0, Lio/reactivex/rxjava3/core/-$$Lambda$ACMvIXc4Di-lyJlVffPQWDhpa08;->INSTANCE:Lio/reactivex/rxjava3/core/-$$Lambda$ACMvIXc4Di-lyJlVffPQWDhpa08;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    return-object p1
.end method
