.class Lcom/alibaba/ailabs/genie/density/GenieAdapterViewInflater;
.super Ljava/lang/Object;
.source "GenieAdapterViewInflater.java"

# interfaces
.implements Landroid/view/LayoutInflater$Factory;


# static fields
.field private static final TAG:Ljava/lang/String; = "GenieViewInflater"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 24
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCreateView: name = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "GenieViewInflater"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const v0, -0x37f7066e

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "TextView"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_2

    const/4 p0, 0x0

    goto :goto_2

    .line 29
    :cond_2
    new-instance p0, Lcom/alibaba/ailabs/genie/density/adapter/view/GenieTextView;

    invoke-direct {p0, p2, p3}, Lcom/alibaba/ailabs/genie/density/adapter/view/GenieTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    :goto_2
    return-object p0
.end method


# virtual methods
.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
