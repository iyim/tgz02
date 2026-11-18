.class Lcom/rich/czlylibary/http/d/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rich/czlylibary/http/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/rich/czlylibary/http/d/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/rich/czlylibary/http/d/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/rich/czlylibary/http/d/a;-><init>(Lcom/rich/czlylibary/http/d/a$1;)V

    sput-object v0, Lcom/rich/czlylibary/http/d/a$a;->a:Lcom/rich/czlylibary/http/d/a;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic a()Lcom/rich/czlylibary/http/d/a;
    .locals 1

    sget-object v0, Lcom/rich/czlylibary/http/d/a$a;->a:Lcom/rich/czlylibary/http/d/a;

    return-object v0
.end method
