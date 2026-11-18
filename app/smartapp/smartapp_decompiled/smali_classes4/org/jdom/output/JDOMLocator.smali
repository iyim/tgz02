.class public Lorg/jdom/output/JDOMLocator;
.super Lorg/xml/sax/helpers/LocatorImpl;
.source "JDOMLocator.java"


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: JDOMLocator.java,v $ $Revision: 1.4 $ $Date: 2007/11/10 05:29:01 $ $Name: jdom_1_1 $"


# instance fields
.field private node:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Lorg/xml/sax/helpers/LocatorImpl;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method constructor <init>(Lorg/xml/sax/Locator;)V
    .locals 1

    .line 92
    invoke-direct {p0, p1}, Lorg/xml/sax/helpers/LocatorImpl;-><init>(Lorg/xml/sax/Locator;)V

    .line 94
    instance-of v0, p1, Lorg/jdom/output/JDOMLocator;

    if-eqz v0, :cond_0

    .line 95
    nop

    nop

    invoke-virtual {p1}, Lorg/jdom/output/JDOMLocator;->getNode()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jdom/output/JDOMLocator;->setNode(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getNode()Ljava/lang/Object;
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/jdom/output/JDOMLocator;->node:Ljava/lang/Object;

    return-object v0
.end method

.method setNode(Ljava/lang/Object;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lorg/jdom/output/JDOMLocator;->node:Ljava/lang/Object;

    return-void
.end method
