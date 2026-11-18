.class public Lb/m/i$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/m/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Landroidx/lifecycle/Lifecycle$State;

.field public b:Lb/m/f;


# direct methods
.method public constructor <init>(Lb/m/g;Landroidx/lifecycle/Lifecycle$State;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lb/m/k;->a(Ljava/lang/Object;)Lb/m/f;

    move-result-object p1

    iput-object p1, p0, Lb/m/i$a;->b:Lb/m/f;

    iput-object p2, p0, Lb/m/i$a;->a:Landroidx/lifecycle/Lifecycle$State;

    return-void
.end method


# virtual methods
.method public a(Lb/m/h;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 2

    invoke-static {p2}, Lb/m/i;->b(Landroidx/lifecycle/Lifecycle$Event;)Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    iget-object v1, p0, Lb/m/i$a;->a:Landroidx/lifecycle/Lifecycle$State;

    invoke-static {v1, v0}, Lb/m/i;->a(Landroidx/lifecycle/Lifecycle$State;Landroidx/lifecycle/Lifecycle$State;)Landroidx/lifecycle/Lifecycle$State;

    move-result-object v1

    iput-object v1, p0, Lb/m/i$a;->a:Landroidx/lifecycle/Lifecycle$State;

    iget-object v1, p0, Lb/m/i$a;->b:Lb/m/f;

    invoke-interface {v1, p1, p2}, Lb/m/f;->a(Lb/m/h;Landroidx/lifecycle/Lifecycle$Event;)V

    iput-object v0, p0, Lb/m/i$a;->a:Landroidx/lifecycle/Lifecycle$State;

    return-void
.end method
